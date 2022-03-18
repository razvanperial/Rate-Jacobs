// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_application_3/views/about/about_view_desktop.dart';
import 'package:flutter_application_3/widgets/majors_list/majors_list.dart';
import 'package:flutter_application_3/widgets/rated_majors_list/rated_majors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'about_view_mobile.dart';

class AboutView extends StatelessWidget {
  const AboutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: AboutViewMobile(),
      desktop: AboutViewDesktop(),
    );
  }
}
