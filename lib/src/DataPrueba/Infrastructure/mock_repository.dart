import 'package:app_rent_bike/src/DataPrueba/Domain/interface_data_prueba_repository.dart';

class MockDataRepository implements InterfaceDataRepository {
  MockDataRepository();

  List<String> data = ['"Hola", "Como"', 'sadasd', 'xzczxczx'];

  @override
  Future<List<String>> getDataPrueba() async {
    try {
      await Future.delayed(const Duration());
      print(data);
      data.add('Jair');
      return data;
    } catch (e) {
      return [];
    }
  }
}
