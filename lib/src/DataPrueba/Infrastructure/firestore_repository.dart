import 'package:app_rent_bike/src/DataPrueba/Domain/interface_data_prueba_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
export 'package:app_rent_bike/src/DataPrueba/Domain/interface_data_prueba_repository.dart';

class FirestoreDataRepository implements InterfaceDataRepository {
  final FirebaseFirestore _firestore;

  FirestoreDataRepository(this._firestore);

  @override
  Future<List<String>> getDataPrueba() async {
    try {
      final DocumentSnapshot resp = await _firestore.doc('/data/EYoCNhqtg1dmEILg7xlq').get();

      return [resp.data().toString()];
    } catch (e) {
      return [];
    }
  }
}
