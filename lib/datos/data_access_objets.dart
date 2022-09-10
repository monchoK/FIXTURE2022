import 'package:firebase_database/firebase_database.dart';

class Dao {
  final DatabaseReference _databaseRef =
      FirebaseDatabase.instance.ref().child("datos");

  void getDatos() => _databaseRef;
}
