import 'package:app_rent_bike/src/Auth/Domain/interface_data_prueba_repository.dart';
import 'package:dartz/dartz.dart';

class GetDataUser {
  final InterfaceDataUserRepository _repository;

  GetDataUser(this._repository);

  Future<Either<Unit, String>> execute() async {
    final res = await _repository.getDataUser();
    return res;
  }
}
