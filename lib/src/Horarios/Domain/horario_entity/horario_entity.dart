import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';
import 'package:app_rent_bike/src/shared/Domain/mixins.dart';
import 'package:built_collection/built_collection.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../value_objects.dart';
part 'horario_entity.freezed.dart';

@freezed
abstract class HorarioEntity implements _$HorarioEntity {
  const factory HorarioEntity._prop({
    final Hour hourInit,
    final Hour hourFinish,
    final Minute minuteInit,
    final Minute minuteFinish,
    final String uidHorario,
    String textTimer,
    final bool isLoading,
    final int timestamp,
    final LimitBikesAvailables limitBikesAvailables,
    final BuiltList<String> listUsers,
  }) = _HorarioEntity;

  const HorarioEntity._();

  static Either<HorarioDto, HorarioEntity> fromDto(HorarioDto dto) {
    final horarioDto = dto.copyWith();
    if (DateTimeMixin.isTimeFinishMoreThanTimeInit(horarioDto)) {
      return Left(horarioDto);
    }
    return Right(HorarioEntity._prop(
      hourInit: Hour(horarioDto.hourInit),
      hourFinish: Hour(horarioDto.hourFinish),
      minuteInit: Minute(horarioDto.minuteInit),
      minuteFinish: Minute(horarioDto.minuteFinish),
      listUsers: horarioDto.idUsers.build(),
      uidHorario: horarioDto.uidHorario,
      timestamp: horarioDto.timestamp,
      textTimer: '',
      isLoading: horarioDto.isLoading ?? false,
      limitBikesAvailables: LimitBikesAvailables(horarioDto.bikesAvailables),
    ));
  }

  bool isActive(String uidUserApp) => listUsers.contains(uidUserApp);

  bool get isEmptyBikeAvailables => limitBikesAvailables.value.fold((l) => true, (r) => r == listUsers.length);

  String get bikesAvailables => limitBikesAvailables.value.fold(
        (l) => '0',
        (r) => r - listUsers.length >= 0 ? '${r - listUsers.length}' : '0',
      );

  int _diferenceHour(bool isTimeLocal) =>
      isTimeLocal ? (-DateTimeMixin.diferenceHourGTM + DateTime.now().timeZoneOffset.inHours) : 0;

  DateTime _getTimeWithDiferenceHour(
    int hour,
    int diferenceHour,
  ) =>
      DateTime(2000, 1, 1, hour).add(Duration(hours: diferenceHour));

  int getHourInit({bool isTimeLocal = false}) => hourInit.value.fold(
        (l) => l.map(
            valueIsNegative: (_) => _getTimeWithDiferenceHour(0, _diferenceHour(isTimeLocal)).hour,
            valueExceded: (_) => _getTimeWithDiferenceHour(23, _diferenceHour(isTimeLocal)).hour),
        (hour) {
          final horarioInit = _getTimeWithDiferenceHour(hour, _diferenceHour(isTimeLocal));
          return horarioInit.hour;
        },
      );

  int getHourFinish({bool isTimeLocal = false}) => hourFinish.value.fold(
        (l) => l.map(
            valueIsNegative: (_) => _getTimeWithDiferenceHour(0, _diferenceHour(isTimeLocal)).hour,
            valueExceded: (_) => _getTimeWithDiferenceHour(23, _diferenceHour(isTimeLocal)).hour),
        (hour) {
          final hourFinish = _getTimeWithDiferenceHour(hour, _diferenceHour(isTimeLocal));
          return hourFinish.hour;
        },
      );

  int get minuteInitValue =>
      minuteInit.value.fold((l) => l.map(valueIsNegative: (_) => 0, valueExceded: (_) => 59), (r) => r);

  int get minuteFinishValue =>
      minuteFinish.value.fold((l) => l.map(valueIsNegative: (_) => 0, valueExceded: (_) => 59), (r) => r);
  bool get isHorarioVigente {
    bool isHisTimeVigente;

    final horarioInit = DateTime(2000, 1, 1, getHourInit(), minuteInitValue);
    final horarioFinish = DateTime(2000, 1, 1, getHourFinish(), minuteFinishValue);

    if (horarioInit.hour * 60 + horarioInit.minute <=
            (DateTimeMixin.dateTimeGmt_5.hour) * 60 + DateTimeMixin.dateTimeGmt_5.minute &&
        horarioFinish.hour * 60 + horarioFinish.minute >
            DateTimeMixin.dateTimeGmt_5.hour * 60 + DateTimeMixin.dateTimeGmt_5.minute) {
      isHisTimeVigente = true;
    } else {
      isHisTimeVigente = false;
    }
    return isHisTimeVigente;
  }

  bool get isToday {
    bool isToday;

    final horarioFinish = DateTime(2000, 1, 1, getHourFinish(), minuteFinishValue);

    if (horarioFinish.hour * 60 + horarioFinish.minute <=
        DateTimeMixin.dateTimeGmt_5.hour * 60 + DateTimeMixin.dateTimeGmt_5.minute) {
      isToday = false;
    } else {
      isToday = true;
    }
    return isToday;
  }

  String get textTimeToBeginOrFinish => '$_textHour $_textMinute $_textSecond';

  Duration get duration {
    final timeInit = DateTime(2000, 1, isToday ? 1 : 2, getHourInit(), minuteInitValue);
    final timeFinish = DateTime(2000, 1, 1, getHourFinish(), minuteFinishValue);
    final timeNow = DateTime(2000, 1, 1, DateTimeMixin.dateTimeGmt_5.hour, DateTimeMixin.dateTimeGmt_5.minute,
        DateTimeMixin.dateTimeGmt_5.second);
    final durationToFinish = timeInit.difference(timeNow);
    final durationToBegin = timeFinish.difference(timeNow);
    return isHorarioVigente ? durationToBegin : durationToFinish;
  } //tiempoFaltante.isNegative && tiempoParaEmpezar.isNegative && isToday

  String get _textHour => duration.inHours == 0 ? '' : '${duration.inHours}h';
  String get _textMinute => duration.inMinutes % 60 == 0 ? '' : '${duration.inMinutes % 60}m';
  String get _textSecond => duration.inHours != 0 ? '' : '${duration.inSeconds % 60}s';
}
