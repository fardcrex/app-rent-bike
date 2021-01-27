import 'dart:developer';

import 'package:app_rent_bike/Features/DataPrueba/Domain/interface_data_prueba_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@named
@prod
@Injectable(as: Service)
class MockRepository implements InterfaceDataRepository {
  MockRepository();
  //final FirebaseFirestore _firestore;

  @override
  Future<List<String>> getDataPrueba() async {
    try {
      await Future.delayed(const Duration(seconds: 6));
      return ['"Hola", "Como"', 'sadasd', 'xzczxczx'];
    } catch (e) {
      return [];
    }
  }
}
