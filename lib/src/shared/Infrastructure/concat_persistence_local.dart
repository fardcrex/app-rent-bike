import 'package:app_rent_bike/src/shared/Domain/interface_persistence_local.dart';
import 'package:dartz/dartz.dart';

class LocalPersistenceRepository implements IntefacePersistenceRepository {
  @override
  // TODO: implement isFirstTime
  Option<bool> get isFirstTime => throw UnimplementedError();

  @override
  // TODO: implement isTimeZone
  bool get isTimeZone => throw UnimplementedError();

  @override
  // TODO: implement lastPage
  int get lastPage => throw UnimplementedError();

  @override
  // TODO: implement uidUser
  Option<String> get uidUser => throw UnimplementedError();

  @override
  void createUserAnonimo() {
    // TODO: implement createUserAnonimo
  }
}
