import 'package:app_rent_bike/src/Horarios/Domain/interfaces_repository.dart';

class MockBdLocalRepository implements InterfaceBDLocalRepository {
  @override
  Future<bool> isAnoherDay() {
    return Future.value(false);
  }

  @override
  Future<bool> isNotRegisterOnApp() {
    return Future.value(false);
  }
}
