import 'package:app_rent_bike/app/Redux/state/enums/enums.dart';

abstract class InterfaceUserSettingsRepository {
  void saveLastAppMenuSetting(AppMenu appMenu);

  void saveLocalTimeSetting({bool isLocalTime = false});

  AppMenu getAppMenu();
  bool getIfIsLocalTime();
}
