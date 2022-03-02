// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/constants/app_colors.dart';
import 'package:flutter_application_3/routing/route_names.dart';
import 'package:flutter_application_3/views/about/about_view.dart';

import '../../locator.dart';
import '../../services/navigation_service.dart';
import '../centered_view/centered_view.dart';

class OverallRatings extends StatelessWidget {
  const OverallRatings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(AboutRoute);
      },
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            color: primaryColor,
          ),
          width: 200,
          height: 55,
          child: CenteredView(
            child: Text(
              'See overall ratings',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            ver: 15,
            hor: 10,
          ),
        ),
      ),
    );
  }
}
