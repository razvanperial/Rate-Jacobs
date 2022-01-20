// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/routing/route_names.dart';
import 'package:flutter_application_3/views/Majors/majors_view.dart';
import 'package:flutter_application_3/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:flutter_application_3/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:flutter_application_3/widgets/majors_list/majors_list.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../locator.dart';
import '../../services/navigation_service.dart';

class CallToAction extends StatelessWidget {
  final String title;
  const CallToAction(this.title);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(MajorsRoute);
      },
      child: MouseRegion(
        child: ScreenTypeLayout(
          mobile: CallToActionMobile(title),
          desktop: CallToActionTabletDesktop(title),
          tablet: CallToActionTabletDesktop(title),
        ),
        cursor: SystemMouseCursors.click,
      ),
    );
  }
}
