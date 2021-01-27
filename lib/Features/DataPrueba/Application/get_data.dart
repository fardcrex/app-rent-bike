import 'package:app_rent_bike/Features/DataPrueba/Domain/interface_data_prueba_repository.dart';

class GetData {
  final InterfaceDataRepository _repository;

  GetData(this._repository);

  Future<List<String>> execute() async {
    final data = await _repository.getDataPrueba();
    return data;
  }
}
