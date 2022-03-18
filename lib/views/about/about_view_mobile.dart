// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_3/widgets/majors_list/majors_list.dart';
import 'package:flutter_application_3/widgets/rated_majors_list/rated_majors.dart';

class AboutViewMobile extends StatelessWidget {
  const AboutViewMobile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Column(
        children: [
          Text(
            'Overall Ratings for every Major',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.white, fontSize: 25),
          ),
          SizedBox(height: 30),
          Expanded(
            child: SizedBox(
              height: 100,
              child: GridView.builder(
                itemCount: majorsListItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  crossAxisSpacing: 30,
                  mainAxisSpacing: 30,
                  mainAxisExtent: 200,
                ),
                itemBuilder: (context, index) {
                  return RatedMajors(
                    index: index,
                    name: majorsListItems[index].title1,
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
