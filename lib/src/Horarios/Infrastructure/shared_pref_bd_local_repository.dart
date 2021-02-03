import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';
import 'package:app_rent_bike/src/shared/mixins.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefBdLocalRepository with DateTimeMixin implements InterfaceBDLocalRepository {
  @override
  Future<bool> isAnoherDay() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final dateNow = DateTime.now().millisecondsSinceEpoch;
    final dateSaved = prefs.getInt('dateSaved') ?? DateTime.now().millisecondsSinceEpoch;

    if (isAnoherDayMixin(dateNow, dateSaved)) {
      await prefs.setInt('dateSaved', dateNow);
      return true;
    }
    return false;
  }

  @override
  Future<bool> isNotRegisterOnApp() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final isRegister = prefs.getBool('isRegister') ?? false;

    if (isRegister) {
      return false;
    }
    await prefs.setBool('isRegister', true);
    return true;
  }
}
