// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/get_add_star_rating/add_star_rating.dart';
import 'package:flutter_application_3/widgets/centered_view/centered_view.dart';
import 'package:flutter_application_3/widgets/see_overall_ratings/see_overall_ratings.dart';
import 'package:flutter_application_3/widgets/submit_button/submit_button.dart';

import '../star_rating/star_rating.dart';

class MajorRatingMobile extends StatefulWidget {
  late String title;
  MajorRatingMobile(this.title, {Key? key}) : super(key: key);

  @override
  State<MajorRatingMobile> createState() => _MajorRatingMobileState();
}

class _MajorRatingMobileState extends State<MajorRatingMobile> {
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
      child: Padding(
        padding: EdgeInsets.all(40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Rate $text",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 25,
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
                crossAxisAlignment: CrossAxisAlignment.center,
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
                      addRating(widget.title, submited_rating);
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'You have submited $submited_rating stars!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 23,
                    ),
                  ),
                  SizedBox(height: 20),
                  OverallRatings(),
                ],
              ),
          ],
        ),
      ),
    );
  }
}
