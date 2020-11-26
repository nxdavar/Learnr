import 'package:flutter/material.dart';
import 'package:learnr/sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

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

// Future<void> userSetup(
// String eduLevel, String lTagOne, String pTagOne) async {
// CollectionReference users = FirebaseFirestore.instance.collection('Users');
// FirebaseAuth auth = FirebaseAuth.instance;
// String displayName = auth.currentUser.displayName.toString();
// String uid = auth.currentUser.uid.toString();
// String photoUrl = auth.currentUser.photoURL.toString();
// // Trying to figure out if a document with a particular user ID exists or not
// //getDoc(uid);
// users.add({
// 'displayName': displayName,
// 'uid': uid,
// 'photoUrl': photoUrl,
// 'eduLevel': eduLevel,
// 'lTagOne': lTagOne,
// 'pTagOne': pTagOne,
// });
// return;
// }
// }
