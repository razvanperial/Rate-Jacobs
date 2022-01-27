// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/centered_view/centered_view.dart';
import 'package:flutter_application_3/widgets/majors_list/majors_final_list.dart';

class MajorsView extends StatelessWidget {
  const MajorsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CenteredView(
      hor: 60,
      ver: 10,
      child: MajorsList(),
    );
  }
}
