// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/centered_view/centered_view.dart';

import '../../widgets/call_to_action/call_to_action.dart';
import '../../widgets/course_details/course_details.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      hor: 65,
      ver: 40,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CourseDetails(),
          SizedBox(height: 40),
          Expanded(
            child: Row(
              children: [
                CallToAction('Start rating'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
