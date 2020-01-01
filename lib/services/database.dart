import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hello_world/models/tip.dart';

class DatabaseService {

  final String uid;
  DatabaseService({ this.uid });

  // collection reference
  final CollectionReference tahminCollection = Firestore.instance.collection('users');

  Future updateUserData(String name, String rotaID, int userRank) async {
    return await tahminCollection.document(uid).setData({
      'name': name,
      'rotaID': rotaID,
      'userRank': userRank,
    });
  }

  //tip list from snapshot
  List<Tip> _tipListFromSnapshot(QuerySnapshot snapshot) {
    return snapshot.documents.map((doc) {
      return Tip(
        gameID: doc.data['gameID'] ?? 0,
        name: doc.data['name'] ?? '',
        pick: doc.data['pick'] ?? '',
        status: doc.data['status'] ?? 100
      );
    }).toList();
  }

  // get users
  Stream<List<Tip>> get users {
    return tahminCollection.snapshots()
    .map(_tipListFromSnapshot);
  }
}
