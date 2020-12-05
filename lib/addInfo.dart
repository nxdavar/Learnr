import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final String uid;
  DatabaseService({this.uid});

  // collection reference
  final CollectionReference users =
      FirebaseFirestore.instance.collection('Users');

  Future<void> updateUserData(String displayName, String photoUrl,
      String eduLevel, String lTagOne, String pTagOne) async {
    return await users.doc(uid).set({
      'displayName': displayName,
      'uid': uid,
      'photoUrl': photoUrl,
      'eduLevel': eduLevel,
      'lTagOne': lTagOne,
      'pTagOne': pTagOne,
    });
  }
}
