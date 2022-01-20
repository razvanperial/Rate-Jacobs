// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import 'bullet.dart';

class CourseListItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  const CourseListItem(this.title, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        MyBullet(),
        SizedBox(width: 10),
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
