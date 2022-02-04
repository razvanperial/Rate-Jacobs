// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import '../../locator.dart';
import '../../services/navigation_service.dart';
import 'bullet.dart';

class MajorsListItemWidget extends StatelessWidget {
  final String title1;
  final Animation<double> animation;
  final VoidCallback? onClicked;
  final String navigationPath;
  MajorsListItemWidget(
      this.animation, this.onClicked, this.title1, this.navigationPath);

  @override
  Widget build(BuildContext context) => SizeTransition(
        sizeFactor: animation,
        child: buildItem(),
      );

  Widget buildItem() {
    if (title1 != 'default') {
      return GestureDetector(
        onTap: onClicked,
        child: MouseRegion(
          child: Column(
            children: <Widget>[
              SizedBox(height: 12.5),
              Row(
                children: <Widget>[
                  MyBullet(),
                  SizedBox(width: 10),
                  Text(
                    title1,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 12.5),
            ],
          ),
          cursor: SystemMouseCursors.click,
        ),
      );
    } else {
      return Row(
        children: <Widget>[
          SizedBox(width: 50),
          GestureDetector(
            onTap: () {
              locator<NavigationService>().navigateTo(navigationPath);
            },
            child: MouseRegion(
              child: Text(
                'Rate Major',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              cursor: SystemMouseCursors.click,
            ),
          ),
          SizedBox(width: 10),
          Text(
            '|',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
          SizedBox(width: 10),
          GestureDetector(
            child: MouseRegion(
              child: Text(
                'Rate Courses',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
              cursor: SystemMouseCursors.click,
            ),
          ),
        ],
      );
    }
  }
}
