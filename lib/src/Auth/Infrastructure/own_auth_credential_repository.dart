import 'package:app_rent_bike/app/Redux/state/enums/enums.dart';
import 'package:app_rent_bike/src/Auth/Domain/auth_failure.dart';
import 'package:app_rent_bike/src/Auth/Domain/interfaces_auth.dart';
import 'package:app_rent_bike/src/shared/Domain/interface_setting.dart';
import 'package:dartz/dartz.dart';
import 'package:platform_device_id/platform_device_id.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OwnAuthCredentialRepository
    implements
        InterfaceReadCredentialsRepository,
        InterfaceWriteCredentialsRepository,
        InterfaceUserSettingsRepository {
  static const String keyUid = 'uidUser';
  static const String keyToken = 'token';

  final SharedPreferences _sharedPreferences;

  OwnAuthCredentialRepository(this._sharedPreferences);

  @override
  bool isUserAuthenticate() {
    try {
      final res = optionOf(_sharedPreferences.getString(keyUid));
      return res.isSome();
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInAnonymous() async {
    try {
      final deviceid = await PlatformDeviceId.getDeviceId;
      _sharedPreferences.setString(keyUid, deviceid);
      return const Right(unit);
    } catch (e) {
      return const Left(AuthFailure.serverError());
    }
  }

  @override
  // TODO: implement uidUser
  String get uidUser => _sharedPreferences.getString(keyUid);

  @override
  void saveCredentials({String uidUser, String token}) {
    _sharedPreferences.setString(keyUid, uidUser);
    _sharedPreferences.setString(keyToken, token);
  }

  @override
  void signOut() {
    _sharedPreferences.clear();
  }

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
  AppMenu getAppMenu() => AppMenu.fromTypeInt(_sharedPreferences.getInt(keyAppMenu));

  @override
  bool getIfIsLocalTime() => _sharedPreferences.getBool(keyLocalTime);
}
