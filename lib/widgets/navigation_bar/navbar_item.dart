import 'package:flutter/material.dart';
import 'package:flutter_application_3/locator.dart';
import 'package:flutter_application_3/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final Color color;
  const NavBarItem(this.title, this.color, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: MouseRegion(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            color: color,
          ),
        ),
        cursor: SystemMouseCursors.click,
      ),
    );
  }
}
