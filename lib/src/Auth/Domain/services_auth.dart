import 'package:app_rent_bike/src/shared/Domain/uuid.dart';

import 'interfaces_auth.dart';

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
