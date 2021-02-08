import 'package:app_rent_bike/src/Auth/Domain/auth_failure.dart';
import 'package:app_rent_bike/src/Auth/Domain/interfaces_auth.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:platform_device_id/platform_device_id.dart';

class FirebaseAuthCredentialRepository implements InterfaceReadCredentialsRepository {
  static const String keyUid = 'uidUser';
  static const String keyToken = 'token';

  final FirebaseAuth _firebaseAuth;

  FirebaseAuthCredentialRepository(this._firebaseAuth);

  @override
  bool isUserAuthenticate() {
    try {
      final res = optionOf(_firebaseAuth.currentUser);
      return res.isSome();
    } catch (e) {
      return false;
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInAnonymous() async {
    try {
      final deviceid = await PlatformDeviceId.getDeviceId;
      await _firebaseAuth.signInAnonymously();
      await _firebaseAuth.currentUser.updateProfile(displayName: deviceid);
      return const Right(unit);
    } catch (e) {
      return const Left(AuthFailure.serverError());
    }
  }

  @override
  String get uidUser => _firebaseAuth.currentUser.displayName;
}
