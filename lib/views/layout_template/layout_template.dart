// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/locator.dart';
import 'package:flutter_application_3/routing/route_names.dart';
import 'package:flutter_application_3/routing/router.dart';
import 'package:flutter_application_3/services/navigation_service.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../widgets/centered_view/centered_view.dart';
import '../../widgets/navigation_bar/navigation_bar.dart';
import '../../widgets/navigation_drawer/navigation_drawer.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        double size =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? 70
                : 50;
        return Scaffold(
          drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? NavigationDrawer()
              : null,
          backgroundColor: Colors.white,
          body: Center(
            child: Stack(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("background.png"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                CenteredView(
                  hor: size,
                  ver: 60,
                  child: Column(
                    children: <Widget>[
                      Navigation_Bar(),
                      SizedBox(height: 30),
                      Expanded(
                        child: Navigator(
                          key: locator<NavigationService>().navigatorKey,
                          onGenerateRoute: generateRoute,
                          initialRoute: HomeRoute,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
