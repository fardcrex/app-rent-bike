import 'package:app_rent_bike/Features/DataPrueba/Infrastructure/cache_repository.dart';
import 'package:app_rent_bike/Features/DataPrueba/Infrastructure/firestore_repository.dart';
import 'package:app_rent_bike/injection.dart';
import 'package:injectable/injectable.dart';

@factoryMethod
abstract class InterfaceDataRepository {
  Future<List<String>> getDataPrueba();
}
