import 'package:dartz/dartz.dart';

abstract class InterfaceDataUserRepository {
  Future<Either<Unit, String>> getDataUser();
}
