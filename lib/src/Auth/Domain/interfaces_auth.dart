import 'package:dartz/dartz.dart';

import 'auth_failure.dart';

abstract class InterfaceReadCredentialsRepository {
  Future<Either<AuthFailure, Unit>> signInAnonymous();
  String get uidUser;
  bool isUserAuthenticate();
}

abstract class InterfaceWriteCredentialsRepository {
  void signOut();
  void saveCredentials({String uidUser, String token});
}
