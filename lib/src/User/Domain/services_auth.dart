import 'package:app_rent_bike/src/shared/Domain/uuid.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'auth_failure.dart';

class ServicesAuth {
  ServicesAuth._(this._uidUser);
  final String _uidUser;

  String get uidUser => _uidUser;

  /*  String getUidUser() {
    final uidUser = _repositoryAuth.getUid();
    return uidUser;
  } */

  static Future<ServicesAuth> instance(InterfaceReadCredentialsRepository repositoryAuth) async {
    if (repositoryAuth.isUserAuthenticate()) {
      return ServicesAuth._(repositoryAuth.uidUser);
    }
    final resp = await repositoryAuth.signInAnonymous();
    return resp.fold(
      (l) => ServicesAuth._(Uuid().generateV4()),
      (r) => ServicesAuth._(repositoryAuth.uidUser),
    );
  }

  factory ServicesAuth.instanceMock({String uid}) {
    if (uid == null) {
      return ServicesAuth._(Uuid().generateV4());
    }
    return ServicesAuth._(uid);
  }
}

abstract class InterfaceReadCredentialsRepository {
  Future<Either<AuthFailure, Unit>> signInAnonymous();
  String get uidUser;
  bool isUserAuthenticate();
}

abstract class InterfaceWriteCredentialsRepository {
  void signOut();
  void saveCredentials({String uidUser, String token});
}
