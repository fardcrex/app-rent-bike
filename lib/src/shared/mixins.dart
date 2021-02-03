mixin DateTimeMixin {
  bool isAnoherDayMixin(int dateNowInt, int dateSavedInt) {
    final dateNow = DateTime.fromMillisecondsSinceEpoch(dateNowInt);
    final dateSaved = DateTime.fromMillisecondsSinceEpoch(dateSavedInt);
    if (dateNow.day != dateSaved.day) return true;
    if (dateNow.month != dateSaved.month) return true;
    if (dateNow.year != dateSaved.year) return true;
    return false;
  }

  static const diferenceHourGTM = -5;
  DateTime get dateTimeGmt5 => DateTime.now().toUtc().add(const Duration(hours: diferenceHourGTM));
}
