import 'package:app_rent_bike/src/Auth/Domain/interface_data_prueba_repository.dart';

class MockBdLocalRepository implements InterfaceBDLocalRepository {
  @override
  Future<bool> isNotRegisterOnApp() {
    return Future.value(false);
  }

  @override
  Future<String> getUidUser() {
    // TODO: implement getUidUser
    throw UnimplementedError();
  }

  @override
  Future<void> saveUidUser(String uid) {
    // TODO: implement saveUidUser
    throw UnimplementedError();
  }
}
