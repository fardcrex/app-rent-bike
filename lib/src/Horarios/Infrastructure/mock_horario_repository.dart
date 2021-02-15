import 'dart:math';

import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';
import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';
import 'package:app_rent_bike/src/Horarios/Domain/success_and_failure/success_and_failure.dart';
import 'package:app_rent_bike/src/shared/Domain/mixins.dart';
import 'package:dartz/dartz.dart';
import 'package:rxdart/rxdart.dart';

class MockHorarioRepository with DateTimeMixin implements InterfaceHorarioRepository {
  var _data = <HorarioDto>[];

  @override
  Stream<List<HorarioDto>> getHorariosStream() {
    if (_data.isEmpty) {
      _data = List.generate(24, (i) {
        final timeHour = i ~/ 2;
        return HorarioDto(
            timestamp: (i.isEven ? 8 + timeHour : 9 + timeHour) * 60 + (i.isEven ? 30 : 0) >
                    dateTimeGmt5.hour * 60 + dateTimeGmt5.minute
                ? dateTimeGmt5.millisecondsSinceEpoch
                : dateTimeGmt5.add(const Duration(days: 1)).millisecondsSinceEpoch,
            uidHorario: '$i',
            bikesAvailables: 8,
            hourInit: 8 + timeHour,
            hourFinish: i.isEven ? 8 + timeHour : 9 + timeHour,
            minuteInit: i.isEven ? 0 : 30,
            minuteFinish: i.isEven ? 30 : 0,
            idUsers: List.generate(Random().nextInt(8), (index) => '${index + 1}'));
      }).toList();
    }

    return CombineLatestStream.combine2<List<HorarioDto>, DateTime, List<HorarioDto>>(
        Stream.periodic(const Duration(seconds: 1)).map((_) {
          return _data.map((e) {
            if (Random().nextInt(2).isOdd) return e;
            if (e.idUsers.isEmpty) return e.copyWith(idUsers: e.idUsers..add('1'));
            if (e.idUsers.length == 08) return e.copyWith(idUsers: e.idUsers..remove('8'));
            if (Random().nextInt(2).isOdd) return e.copyWith(idUsers: e.idUsers..remove('${e.idUsers.length}'));
            return e.copyWith(idUsers: e.idUsers..add('${e.idUsers.length + 1}'));
          }).toList();
        }),
        ConcatStream([
          TimerStream(DateTime.now(), const Duration(seconds: 3)),
          Stream.periodic(const Duration(milliseconds: 50)).map((event) => DateTime.now()),
        ]), (a, b) {
      return a;
    });
  }

  @override
  Future<Either<HorarioFailure, HorarioSuccess>> cancelHorario({String uidHorario, String uidUser}) async {
    await Future.delayed(Duration(milliseconds: Random().nextInt(500) + 100));
    final list = _data.where((element) => element.uidHorario == uidHorario).toList();
    if (list.isEmpty) return const Left(HorarioFailure.emptyBikes());

    final data = list.first;
    final userUidList = data.idUsers;

    //Simulamos que uno de cada 5 peticion fallará
    if (Random().nextInt(5) > 1) {
      final newList = userUidList.where((user) => user != uidUser).toList();
      _data = _data.map<HorarioDto>((e) => e.uidHorario == uidHorario ? data.copyWith(idUsers: newList) : e).toList();
      return const Right(HorarioSuccess.cancelBike());
    }
    return const Left(HorarioFailure.errorCancelBike());
  }

  @override
  Future<Either<HorarioFailure, HorarioSuccess>> selectHorario({String uidHorario, String uidUser}) async {
    await Future.delayed(Duration(milliseconds: Random().nextInt(500) + 100));
    final list = _data.where((element) => element.uidHorario == uidHorario).toList();
    if (list.isEmpty) return const Left(HorarioFailure.emptyBikes());

    final data = list.first;
    final userUidList = data.idUsers;

    if (userUidList.length == data.bikesAvailables) return const Left(HorarioFailure.emptyBikes());

    if (Random().nextInt(5) == 1) {
      return const Left(HorarioFailure.errorSelectBike());
    }

    userUidList.add(uidUser);
    final newList = userUidList.toSet();
    _data = _data
        .map<HorarioDto>((e) => e.uidHorario == uidHorario ? data.copyWith(idUsers: newList.toList()) : e)
        .toList();
    return const Right(HorarioSuccess.selectBike());
  }
}
