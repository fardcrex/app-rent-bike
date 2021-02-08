import 'package:app_rent_bike/src/Auth/Domain/interface_data_prueba_repository.dart';
import 'package:app_rent_bike/src/shared/Domain/interface_persistence_local.dart';

import 'package:dartz/dartz.dart';
export 'package:app_rent_bike/src/DataPrueba/Domain/interface_data_prueba_repository.dart';

class FirestoreDataUserRepository implements InterfaceDataUserRepository {
  final IntefacePersistenceRepository _service;

  FirestoreDataUserRepository(this._service);

  @override
  Future<Either<Unit, String>> getDataUser() async {
    try {
      return Right(_service.uidUser.fold(() => null, (a) => a));
    } catch (e) {
      return const Left(unit);
    }
  }
}
