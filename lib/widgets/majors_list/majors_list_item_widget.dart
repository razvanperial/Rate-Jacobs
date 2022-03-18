// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/routing/route_names.dart';
import 'package:flutter_application_3/views/about/about_view.dart';
import 'package:flutter_application_3/widgets/majors_list/text_widget.dart';
import '../../locator.dart';
import '../../services/navigation_service.dart';
import 'bullet.dart';

class MajorsListItemWidget extends StatelessWidget {
  final String title1;
  final Animation<double> animation;
  final VoidCallback? onClicked;
  final String navigationPath;
  final double size;
  MajorsListItemWidget(this.animation, this.onClicked, this.title1,
      this.navigationPath, this.size);

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
                  Flexible(
                    child: Text(
                      title1,
                      style: TextStyle(
                        fontSize: size,
                        color: Colors.white,
                      ),
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
          SizedBox(width: 2 * size),
          GestureDetector(
            onTap: () {
              locator<NavigationService>().navigateTo(navigationPath);
            },
            child: MouseRegion(
              child: TextWidget(title: 'Rate Major'),
              cursor: SystemMouseCursors.click,
            ),
          ),
          SizedBox(width: 10),
          TextWidget(title: '|'),
          SizedBox(width: 10),
          GestureDetector(
            onTap: () {
              locator<NavigationService>().navigateTo(AboutRoute);
            },
            child: MouseRegion(
              child: TextWidget(title: 'Overall ratings'),
              cursor: SystemMouseCursors.click,
            ),
          ),
        ],
      );
    }
  }
}
