// ignore_for_file: prefer_const_constructors, unused_element

import 'dart:js';

import 'package:flutter/material.dart';
import 'package:flutter_application_3/routing/route_names.dart';
import 'package:flutter_application_3/views/home/home_view.dart';

import '../views/Majors/majors_view.dart';
import '../views/about/about_view.dart';
import '../views/rate_majors/BCCB_rate_view.dart';
import '../views/rate_majors/CBT_rate_view.dart';
import '../views/rate_majors/CS_rate_view.dart';
import '../views/rate_majors/ECE_rate_view.dart';
import '../views/rate_majors/GEM_rate_view.dart';
import '../views/rate_majors/IBA_rate_view.dart';
import '../views/rate_majors/IEM_rate_view.dart';
import '../views/rate_majors/IR_rate_view.dart';
import '../views/rate_majors/ISCP_rate_view.dart';
import '../views/rate_majors/MATH_rate_view.dart';
import '../views/rate_majors/MCCB_rate_view.dart';
import '../views/rate_majors/PHYSICS_rate_view.dart';
import '../views/rate_majors/RIS_rate_view.dart';
import '../views/rate_majors/SMP_rate_view.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeRoute:
      return _getPageRoute(HomeView());
    case AboutRoute:
      return _getPageRoute(AboutView());
    case IEMRateRoute:
      return _getPageRoute(IEMRateView());
    case MATHRateRoute:
      return _getPageRoute(MATHRateView());
    case BCCBRateRoute:
      return _getPageRoute(BCCBRateView());
    case CBTRateRoute:
      return _getPageRoute(CBTRateView());
    case CSRateRoute:
      return _getPageRoute(CSRateView());
    case ECERateRoute:
      return _getPageRoute(ECERateView());
    case GEMRateRoute:
      return _getPageRoute(GEMRateView());
    case IBARateRoute:
      return _getPageRoute(IBARateView());
    case IRRateRoute:
      return _getPageRoute(IRRateView());
    case ISCPRateRoute:
      return _getPageRoute(ISCPRateView());
    case MCCBRateRoute:
      return _getPageRoute(MCCBRateView());
    case PHYSICSRateRoute:
      return _getPageRoute(PHYSICSRateView());
    case RISRateRoute:
      return _getPageRoute(RISRateView());
    case SMPRateRoute:
      return _getPageRoute(SMPRateView());
    default:
      return _getPageRoute(MajorsView());
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  _FadeRoute({required this.child})
      : super(
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(opacity: animation, child: child),
        );
}
