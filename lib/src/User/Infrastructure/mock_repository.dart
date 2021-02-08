import 'package:app_rent_bike/src/Auth/Domain/interface_data_prueba_repository.dart';
import 'package:app_rent_bike/src/Auth/Domain/services_auth.dart';
import 'package:dartz/dartz.dart';

class MockDataUserRepository implements InterfaceDataUserRepository {
  final ServicesAuth _servicesAuth;
  MockDataUserRepository(this._servicesAuth);

  @override
  Future<Either<Unit, String>> getDataUser() {
    return Future.value(Right(_servicesAuth.uidUser));
  }
}
