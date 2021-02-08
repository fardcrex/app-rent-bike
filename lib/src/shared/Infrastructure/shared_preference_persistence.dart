import 'package:app_rent_bike/src/shared/Domain/interface_persistence_local.dart';
import 'package:dartz/dartz.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencePersistenceLocal implements IntefacePersistenceRepository {
  final SharedPreferences _preferences;

  SharedPreferencePersistenceLocal._(
    this._preferences,
  );
  @override
  // TODO: implement isFirstTime
  Option<bool> get isFirstTime => optionOf(_preferences.getBool(KeyStore.firsTime));

  @override
  // TODO: implement isTimeZone
  bool get isTimeZone => _preferences.getBool(KeyStore.timeZone);

  @override
  // TODO: implement lastPage
  int get lastPage => _preferences.getInt(KeyStore.lastPage);
  @override
  // TODO: implement uidUser
  Option<String> get uidUser => optionOf(_preferences.getString(KeyStore.uidUser));

  static Future<SharedPreferencePersistenceLocal> instance() async {
    return SharedPreferencePersistenceLocal._(await SharedPreferences.getInstance());
  }

  @override
  void createUserAnonimo() {
    // TODO: implement createUserAnonimo
  }
}

class FirebaseAuthPersistenceLocal implements IntefacePersistenceRepository {
  @override
  // TODO: implement isFirstTime
  Option<bool> get isFirstTime => throw UnimplementedError();

  @override
  // TODO: implement isTimeZone
  bool get isTimeZone => throw UnimplementedError();

  @override
  // TODO: implement lastPage
  int get lastPage => throw UnimplementedError();

  @override
  // TODO: implement uidUser
  Option<String> get uidUser => throw UnimplementedError();

  @override
  void createUserAnonimo() {
    // TODO: implement createUserAnonimo
  }
}

class KeyStore {
  static const firsTime = 'firsTime';
  static const timeZone = 'timeZone';
  static const lastPage = 'lastPage';
  static const uidUser = 'uidUser';
}
