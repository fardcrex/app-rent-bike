import 'package:injectable/injectable.dart';

@factoryMethod
abstract class InterfaceDataRepository {
  Future<List<String>> getDataPrueba();
}
