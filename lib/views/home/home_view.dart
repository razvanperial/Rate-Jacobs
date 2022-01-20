// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/views/home/home_content_desktop.dart';
import 'package:flutter_application_3/views/home/home_content_mobile.dart';
import 'package:flutter_application_3/widgets/call_to_action/call_to_action.dart';
import 'package:flutter_application_3/widgets/centered_view/centered_view.dart';
import 'package:flutter_application_3/widgets/course_details/course_details.dart';
import 'package:flutter_application_3/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter_application_3/widgets/navigation_drawer/navigation_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: HomeContentMobile(),
      desktop: HomeContentDesktop(),
    );
  }
}
