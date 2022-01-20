import 'package:flutter/material.dart';

import '../../locator.dart';
import '../../services/navigation_service.dart';

class NavBarLogo extends StatelessWidget {
  final String navigationPath;
  const NavBarLogo(this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: MouseRegion(
        child: SizedBox(
          height: 80,
          width: 150,
          child: Image.asset('assets/logo.png'),
        ),
        cursor: SystemMouseCursors.click,
      ),
    );
  }
}
