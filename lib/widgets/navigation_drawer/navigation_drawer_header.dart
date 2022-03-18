// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/routing/route_names.dart';
import '../../constants/app_colors.dart';
import '../../locator.dart';
import '../../services/navigation_service.dart';

class NavigationDrawerHeader extends StatelessWidget {
  const NavigationDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          Scaffold.of(context).closeDrawer();
          locator<NavigationService>().navigateTo(MajorsRoute);
        },
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'PICK A MAJOR',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w800,
                color: Colors.white60,
              ),
            ),
            Text(
              'TAP HERE',
              style: TextStyle(
                color: Colors.white60,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
