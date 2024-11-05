import 'package:cloud_firestore/cloud_firestore.dart';

class CardDeckDatabase {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  late CollectionReference _deckCollection;
}
