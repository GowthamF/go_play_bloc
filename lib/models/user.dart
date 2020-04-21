import 'package:cloud_firestore/cloud_firestore.dart';

class User {
  getUser() {
    final db = Firestore.instance;
    db.collection('users').document('1').snapshots().listen((event) {
      print(event.data);
    });
  }
}
