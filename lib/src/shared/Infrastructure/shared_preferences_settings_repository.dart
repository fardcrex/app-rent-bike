import 'package:app_rent_bike/app/Redux/state/enums/enums.dart';
import 'package:app_rent_bike/src/shared/Domain/interface_setting.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesSettingsRepository implements InterfaceUserSettingsRepository {
  final SharedPreferences _sharedPreferences;

  SharedPreferencesSettingsRepository(this._sharedPreferences);
  static const String keyAppMenu = 'AppMenu';
  static const String keyLocalTime = 'LocalTime';

  @override
  void saveLastAppMenuSetting(AppMenu appBar) {
    _sharedPreferences.setInt(keyAppMenu, appBar.getIntFromType());
  }

  @override
  void saveLocalTimeSetting({bool isLocalTime = false}) {
    _sharedPreferences.setBool(keyLocalTime, isLocalTime);
  }

  @override
  AppMenu get appMenu => AppMenu.fromTypeInt(_sharedPreferences.getInt(keyAppMenu));

  @override
  bool get isLocalTime => _sharedPreferences.getBool(keyLocalTime);
}
