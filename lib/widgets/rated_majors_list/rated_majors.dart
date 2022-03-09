import 'dart:html';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/app_colors.dart';
import 'package:flutter_application_3/get_add_star_rating/get_star_ratings.dart';
import 'package:flutter_application_3/widgets/centered_view/centered_view.dart';

import '../majors_list/majors_list.dart';

class RatedMajors extends StatelessWidget {
  int index;
  final String name;
  RatedMajors({Key? key, required this.index, required this.name})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: primaryColor,
      ),
      child: Column(
        //crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          SizedBox(
            height: 120,
            width: 300,
            child: Column(
              children: [
                Text(
                  majorsListItems[index].title1,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                  ),
                ),
              ],
            ),
          ),
          GetAverageRating(documentID: name)
        ],
      ),
    );
  }
}
