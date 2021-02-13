import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';
import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';
import 'package:app_rent_bike/src/Horarios/Domain/success_and_failure/success_and_failure.dart';
import 'package:app_rent_bike/src/shared/Domain/uuid.dart';
import 'package:app_rent_bike/src/shared/Domain/mixins.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

class FirestoreHorarioRepository with DateTimeMixin implements InterfaceHorarioRepository {
  final FirebaseFirestore _firestore;

  FirestoreHorarioRepository(this._firestore);

  DocumentReference get _documentReferenceOfConfig => _firestore.collection('config').doc('init');
  CollectionReference get _collectionReferenceOfHorarios => _firestore.collection('horarios');
  @override
  Stream<List<HorarioDto>> getHorariosStream() {
    final dateNow = dateTimeGmt5;
    final secondToNextMinute = 60 - dateNow.second;
    return CombineLatestStream.combine3<List<HorarioDto>, ConfigDto, DateTime, List<HorarioDto>>(
      _firestore.collection('horarios').orderBy('hourInit').snapshots().map((result) {
        return result.docs
            .map((doc) {
              try {
                return HorarioDto.fromJson(doc.data()).copyWith(uidHorario: doc.id);
              } catch (e) {
                return null;
              }
            })
            .whereType<HorarioDto>()
            .toList();
      }),
      _firestore
          .collection('config')
          .doc('init')
          .snapshots()
          .asyncMap((config) async {
            if (config.exists) return config;
            await _setConfigInit(ConfigDto.init());
          })
          .whereType<DocumentSnapshot>()
          .map((config) => ConfigDto.fromJson(config.data()))
          .onErrorReturn(ConfigDto.init().copyWith(limitMaxBikesAvailables: -1))
          .scan<ConfigDto>((previous, actual, _) {
            if (actual.limitMaxBikesAvailables <= 0) {
              _setConfigInit(previous);
              return null;
            } else if (previous?.limitMaxBikesAvailables != actual.limitMaxBikesAvailables && previous != null) {
              _updateLimitOfBikesToHorarios(actual.limitMaxBikesAvailables);
              return null;
            } else if (actual.timestamp == 0) {
              _cleanUsersToHorarios();
              _setConfigInit(actual.copyWith(timestamp: dateTimeGmt5.millisecondsSinceEpoch));
            }
            return actual;
          })
          .whereType<ConfigDto>(),
      ConcatStream([
        Stream.value(dateNow),
        TimerStream(dateNow.add(Duration(seconds: secondToNextMinute)), Duration(seconds: secondToNextMinute)),
        Stream.periodic(const Duration(minutes: 1)).map((event) => dateTimeGmt5),
      ]),
      (list, config, dateTimeNow) {
        for (final horario in list) {
          if (isAnoherDayMixin(dateTimeNow.millisecondsSinceEpoch, horario.timestamp ?? 0)) continue;
          if (isHisTimePassed(horario)) _cleanListUsers(horario);
        }

        if (!config.isCreateHorarios) {
          if (list.isEmpty) {
            _tryCreateHorarios();
          } else {
            _setConfigInit(config.copyWith(isCreateHorarios: true));
          }
        }
        return list;
      },
    );
  }

  @override
  Future<Either<HorarioFailure, HorarioSuccess>> cancelHorario({String uidHorario, String uidUser}) async {
    Either<HorarioFailure, HorarioSuccess> resp;

    try {
      final docReference = _collectionReferenceOfHorarios.doc(uidHorario);

      await _firestore.runTransaction((transaction) async {
        final document = await transaction.get(docReference);
        if (!document.exists) return;

        final data = HorarioDto.fromJson(document.data());
        final userUidList = data.idUsers;

        final newList = userUidList.where((user) => user != uidUser).toList();
        transaction.update(docReference, data.copyWith(idUsers: newList).toJson());
        resp = const Right(HorarioSuccess.cancelBike());
        return;
      });
      return resp;
    } catch (e) {
      return const Left(HorarioFailure.errorCancelBike());
    }
  }

  @override
  Future<Either<HorarioFailure, HorarioSuccess>> selectHorario({String uidHorario, String uidUser}) async {
    Either<HorarioFailure, HorarioSuccess> resp;

    try {
      final docReference = _collectionReferenceOfHorarios.doc(uidHorario);

      await _firestore.runTransaction((transaction) async {
        final document = await transaction.get(docReference);
        if (!document.exists) return;

        final data = HorarioDto.fromJson(document.data());
        final userUidList = data.idUsers;

        if (userUidList.length == data.bikesAvailables) {
          resp = const Left(HorarioFailure.emptyBikes());
          return;
        }

        userUidList.add(uidUser);
        final newList = userUidList.toSet();
        transaction.update(docReference, data.copyWith(idUsers: newList.toList()).toJson());
        resp = const Right(HorarioSuccess.selectBike());
      });
      return resp;
    } catch (e) {
      return const Left(HorarioFailure.errorSelectBike());
    }
  }

  Future<void> _tryCreateHorarios() async {
    try {
      await _firestore.runTransaction((transaction) async {
        final doc = await transaction.get(_documentReferenceOfConfig);
        final data = ConfigDto.fromJson(doc.data());

        if (!doc.exists) {
          transaction.update(_documentReferenceOfConfig, ConfigDto.init().copyWith(isCreateHorarios: true).toJson());
          final list = _createListDocsHorarios(limitBikes: ConfigDto.init().limitMaxBikesAvailables);
          for (final element in list) {
            transaction.set(_collectionReferenceOfHorarios.doc(element.uidHorario), element.toJson());
          }
          return;
        }

        if ((data.isCreateHorarios) ?? false) return;

        transaction.update(_documentReferenceOfConfig, data.copyWith(isCreateHorarios: true).toJson());
        final list = _createListDocsHorarios(limitBikes: (data.limitMaxBikesAvailables) ?? 8);
        for (final element in list) {
          transaction.set(_collectionReferenceOfHorarios.doc(element.uidHorario), element.toJson());
        }

        return;
      });
    } catch (e) {
      return;
    }
  }

  Future<void> _updateLimitOfBikesToHorarios(int limit) async {
    try {
      final collection = await _collectionReferenceOfHorarios.get(const GetOptions(source: Source.server));
      final futuresList = collection.docs
          .where((element) => element.exists)
          .map((doc) => doc.reference.update({JsonKeyHorario.bikesAvailables: limit}));

      await Future.wait(futuresList);
    } catch (e) {
      return;
    }
  }

  Future<void> _cleanUsersToHorarios() async {
    try {
      final collection = await _collectionReferenceOfHorarios.get();
      final futuresList = collection.docs.where((element) => element.exists).map(
            (doc) => doc.reference.update({JsonKeyHorario.idUsers: []}),
          );
      await Future.wait(futuresList);
    } catch (e) {
      return;
    }
  }

  Future<void> _setConfigInit(ConfigDto configInit) async {
    try {
      await _documentReferenceOfConfig.set(configInit.toJson());
    } catch (e) {
      return;
    }
  }

  Future<void> _cleanListUsers(HorarioDto horario) async {
    try {
      await _collectionReferenceOfHorarios.doc(horario.uidHorario).update({
        JsonKeyHorario.idUsers: [],
        JsonKeyHorario.timestamp:
            DateTime.fromMillisecondsSinceEpoch(horario.timestamp).add(const Duration(days: 1)).millisecondsSinceEpoch,
      });
    } catch (e) {
      return;
    }
  }

  List<HorarioDto> _createListDocsHorarios({int limitBikes}) {
    final dateNow = dateTimeGmt5;

    final listHorarios = <HorarioDto>[];
    for (var i = 0; i < 24; i++) {
      final timeHour = i ~/ 2;
      final hourInit = 8 + timeHour;
      final hourFinish = i.isEven ? 8 + timeHour : 9 + timeHour;
      final minuteInit = i.isEven ? 0 : 30;
      final minuteFinish = i.isEven ? 30 : 0;
      listHorarios.add(HorarioDto(
          uidHorario: Uuid().generateV4(),
          bikesAvailables: limitBikes,
          hourInit: hourInit,
          hourFinish: hourFinish,
          minuteInit: minuteInit,
          minuteFinish: minuteFinish,
          timestamp: hourFinish * 60 + minuteFinish > dateNow.hour * 60 + dateNow.minute
              ? dateNow.millisecondsSinceEpoch
              : dateNow.add(const Duration(days: 1)).millisecondsSinceEpoch,
          idUsers: []));
    }
    return listHorarios;
  }
}
