// ignore_for_file: prefer_const_constructors, curly_braces_in_flow_control_structures, camel_case_types, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/app_colors.dart';
import 'package:flutter_application_3/get_add_star_rating/add_star_rating.dart';

import '../centered_view/centered_view.dart';

class submitButton extends StatelessWidget {
  submitButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          color: primaryColor,
        ),
        width: 120,
        height: 50,
        child: CenteredView(
          child: Text(
            'Submit',
            style: TextStyle(color: Colors.white),
          ),
          ver: 15,
          hor: 10,
        ),
      ),
    );
  }
}
