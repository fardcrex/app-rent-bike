import 'package:app_rent_bike/src/Auth/Domain/services_auth.dart';
import 'package:app_rent_bike/src/User/Domain/interface_data_repository.dart';
import 'package:dartz/dartz.dart';

class MockDataUserRepository implements InterfaceDataUserRepository {
  final ServicesAuth _servicesAuth;
  MockDataUserRepository(this._servicesAuth);

  @override
  Future<Either<Unit, String>> getDataUser() async {
    await Future.delayed(const Duration(seconds: 3));
    return Right(_servicesAuth.uidUser);
  }
}
