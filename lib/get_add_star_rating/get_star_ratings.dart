import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class GetAverageRating extends StatelessWidget {
  final String documentID;
  const GetAverageRating({Key? key, required this.documentID})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    FirebaseFirestore firestore = FirebaseFirestore.instance;
    CollectionReference ratings =
        FirebaseFirestore.instance.collection('ratings');
    ratings.doc(documentID).get();
    return FutureBuilder<DocumentSnapshot>(
      future: ratings.doc(documentID).get(),
      builder:
          (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
        if (snapshot.hasError) {
          return Text("Something went wrong");
        }

        if (snapshot.hasData && !snapshot.data!.exists) {
          return Text("Document does not exist");
        }

        if (snapshot.connectionState == ConnectionState.done) {
          Map<String, dynamic> data =
              snapshot.data!.data() as Map<String, dynamic>;
          int length = data['star_ratings'].length;
          num ans = 0;
          for (int i = 0; i < length; i++) {
            ans += data['star_ratings'][i];
          }
          ans /= length;
          ans.toStringAsFixed(2);
          ans = double.parse((ans).toStringAsFixed(2));
          if (ans.toString() != 'NaN') {
            return Text(
              '$ans stars',
              style: const TextStyle(
                color: Colors.orange,
                fontSize: 20,
              ),
            );
          } else {
            return const Text(
              'No ratings yet',
              style: TextStyle(
                color: Colors.orange,
                fontSize: 20,
              ),
            );
          }
        }

        return Text("loading");
      },
    );
  }
}
