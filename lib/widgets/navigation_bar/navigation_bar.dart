// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/navigation_bar/navbar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'navbar_mobile.dart';

class Navigation_Bar extends StatelessWidget {
  void f;
  Navigation_Bar({Key? key, this.f}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: NavigationBarMobile(),
      tablet: NavigationBarTabletDesktop(),
    );
  }
}
