import 'package:app_rent_bike/src/Auth/Domain/interface_data_prueba_repository.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefBdLocalRepository implements InterfaceBDLocalRepository {
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

  @override
  Future<String> getUidUser() {
    return Future.value('');
  }

  @override
  Future<void> saveUidUser(String uid) {
    return Future.value();
  }
}
