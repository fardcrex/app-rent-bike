import 'dart:developer';

import 'package:app_rent_bike/Features/DataPrueba/Domain/interface_data_prueba_repository.dart';
import 'package:app_rent_bike/injection.dart';
import 'package:injectable/injectable.dart';

class CacheRepository implements InterfaceDataRepository {
  @override
  Future<List<String>> getDataPrueba() async {
    await Future.delayed(const Duration(seconds: 4));
    print(['"Hola", "Como"', 'sadasd', 'xzczxczx']);
    return ['"Hola", "Como"', 'sadasd', 'xzczxczx'];
  }
}
