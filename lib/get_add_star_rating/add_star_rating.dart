import 'package:cloud_firestore/cloud_firestore.dart';

void addRating(String documentID, rating) {
  FirebaseFirestore.instance
      .collection("ratings")
      .doc(documentID)
      .get()
      .then((value) {
    List<num> arr = [];
    for (int i = 0; i < value.data()!['star_ratings'].length; i++) {
      arr.add(value.data()!['star_ratings'][i]);
    }
    arr.add(rating);
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    DocumentReference ratings =
        FirebaseFirestore.instance.collection('ratings').doc(documentID);
    ratings.update({'star_ratings': arr});
  });
}
