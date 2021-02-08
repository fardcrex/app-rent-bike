import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@factoryMethod
abstract class InterfaceDataUserRepository {
  Future<Either<Unit, String>> getDataUser();
}

abstract class InterfaceBDLocalRepository {
  Future<bool> isNotRegisterOnApp();
  Future<String> getUidUser();
  Future<void> saveUidUser(String uid);
}
