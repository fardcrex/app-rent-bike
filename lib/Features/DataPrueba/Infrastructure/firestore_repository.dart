import 'package:app_rent_bike/Features/DataPrueba/Domain/interface_data_prueba_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class FirestoreRepository implements InterfaceDataRepository {
  FirestoreRepository(this._firestore);
  final FirebaseFirestore _firestore;

  @override
  Future<List<String>> getDataPrueba() async {
    try {
      final DocumentSnapshot resp = await _firestore.doc('/data/vd2LSJKs73AzMC30ZkV4').get();
      print(resp.data());
      return ['"Hola", "Como"', 'sadasd', 'xzczxczx', resp.toString()];
    } catch (e) {
      return [];
    }
  }
}
