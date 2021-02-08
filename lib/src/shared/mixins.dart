import 'package:app_rent_bike/src/Horarios/Domain/horarioDto/horario_dto.dart';

mixin DateTimeMixin {
  bool isAnoherDayMixin(int dateNowInt, int dateSavedInt) {
    final dateNow = DateTime.fromMillisecondsSinceEpoch(dateNowInt).toUtc();
    final dateSaved = DateTime.fromMillisecondsSinceEpoch(dateSavedInt).toUtc();
    if (dateNow.day != dateSaved.day) return true;
    if (dateNow.month != dateSaved.month) return true;
    if (dateNow.year != dateSaved.year) return true;
    return false;
  }

  bool isHisTimePassed(HorarioDto dto) {
    bool isHisTimePassed;

    final horarioFinish = DateTime(2000, 1, 1, dto.hourFinish, dto.minuteFinish);

    if (horarioFinish.hour * 60 + horarioFinish.minute <= dateTimeGmt5.hour * 60 + dateTimeGmt5.minute) {
      isHisTimePassed = true;
    } else {
      isHisTimePassed = false;
    }
    return isHisTimePassed;
  }

  bool isHisTimeVigente(HorarioDto dto) {
    bool isHisTimeVigente;

    final horarioInit = DateTime(2000, 1, 1, dto.hourInit, dto.minuteInit);
    final horarioFinish = DateTime(2000, 1, 1, dto.hourFinish, dto.minuteFinish);

    if (horarioInit.hour * 60 + horarioInit.minute <= (dateTimeGmt5.hour) * 60 + dateTimeGmt5.minute &&
        horarioFinish.hour * 60 + horarioFinish.minute > dateTimeGmt5.hour * 60 + dateTimeGmt5.minute) {
      isHisTimeVigente = true;
    } else {
      isHisTimeVigente = false;
    }
    return isHisTimeVigente;
  }

  static const diferenceHourGTM = -5;
  DateTime get dateTimeGmt5 => DateTime.now().toUtc().add(const Duration(hours: diferenceHourGTM));
}
