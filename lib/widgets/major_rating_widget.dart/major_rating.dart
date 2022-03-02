// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/centered_view/centered_view.dart';
import 'package:flutter_application_3/widgets/see_overall_ratings/see_overall_ratings.dart';
import 'package:flutter_application_3/widgets/submit_button/submit_button.dart';

import '../star_rating/star_rating.dart';

class MajorRating extends StatefulWidget {
  late String title;
  MajorRating(this.title, {Key? key}) : super(key: key);

  @override
  State<MajorRating> createState() => _MajorRatingState();
}

class _MajorRatingState extends State<MajorRating> {
  late String text = widget.title;
  late int submited_rating;
  bool ok = false;
  int _rating = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 20,
          ),
        ],
      ),
      child: CenteredView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Rate $text",
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
              ),
            ),
            SizedBox(height: 20),
            if (!ok)
              Rating(
                (rating) {
                  setState(() {
                    _rating = rating;
                  });
                },
              ),
            SizedBox(height: 20),
            if (_rating != null && _rating > 0 && !ok)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 44,
                    child: Text(
                      "You have selected $_rating stars",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      submited_rating = _rating;
                      setState(() {
                        _rating = 0;
                      });
                      ok = true;
                    },
                    child: submitButton(),
                  ),
                ],
              ),
            if (ok)
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'You have submited $submited_rating stars!',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 25,
                    ),
                  ),
                  SizedBox(height: 20),
                  OverallRatings(),
                ],
              ),
          ],
        ),
        hor: 60,
        ver: 10,
      ),
    );
  }
}
