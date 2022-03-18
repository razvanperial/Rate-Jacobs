// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_3/widgets/majors_list/majors_list.dart';
import 'package:flutter_application_3/widgets/rated_majors_list/rated_majors.dart';

class AboutViewDesktop extends StatelessWidget {
  const AboutViewDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => true,
      child: Column(
        children: [
          Text(
            'Overall Ratings for every Major',
            style: TextStyle(color: Colors.white, fontSize: 35),
          ),
          SizedBox(height: 30),
          Expanded(
            child: SizedBox(
              height: 100,
              child: GridView.builder(
                itemCount: majorsListItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
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
