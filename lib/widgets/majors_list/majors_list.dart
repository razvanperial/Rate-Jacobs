// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import 'majors_list_item.dart';

class MajorsList extends StatelessWidget {
  const MajorsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Pick a Major',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        SizedBox(height: 30),
        Expanded(
          child: ListView(
            children: <Widget>[
              CourseListItem('Industrial Engineering & Management', ''),
              SizedBox(height: 25),
              CourseListItem('Mathematics', ''),
              SizedBox(height: 25),
              CourseListItem('Computer Science', ''),
              SizedBox(height: 25),
              CourseListItem('Electrical and Computer Engineering', ''),
              SizedBox(height: 25),
              CourseListItem('Robotics and Intelligent Systems', ''),
              SizedBox(height: 25),
              CourseListItem('Biochemistry and Cell Biology', ''),
              SizedBox(height: 25),
              CourseListItem('Chemistry and Biotechnology', ''),
              SizedBox(height: 25),
              CourseListItem('Medicinal Chemistry and Chemical Biology', ''),
              SizedBox(height: 25),
              CourseListItem('Earth and Environmental Sciences', ''),
              SizedBox(height: 25),
              CourseListItem('Physics', ''),
              SizedBox(height: 25),
              CourseListItem('Global Economics and Management', ''),
              SizedBox(height: 25),
              CourseListItem('International Business Administration', ''),
              SizedBox(height: 25),
              CourseListItem('Society, Media and Politics', ''),
              SizedBox(height: 25),
              CourseListItem(
                  'International Relations: Politics and History', ''),
              SizedBox(height: 25),
              CourseListItem('Integrated Social and Cognitive Psychology', ''),
            ],
          ),
        ),
      ],
    );
  }
}
