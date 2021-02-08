import 'package:dartz/dartz.dart';

abstract class IntefacePersistenceRepository {
  // String get token;
  Option<String> get uidUser;
  bool get isTimeZone;
  Option<bool> get isFirstTime;
  //String get isModeDark;
  //String get idioma;
  int get lastPage;

  void createUserAnonimo() {}
}

abstract class IntefaceLoadOneRepository {
  loadCredentials();
}
