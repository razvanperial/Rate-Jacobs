// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CenteredView extends StatelessWidget {
  final Widget child;
  final double hor;
  final double ver;
  const CenteredView(
      {Key? key, required this.child, required this.hor, required this.ver})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: hor, vertical: ver),
      alignment: Alignment.topCenter,
      child: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 1200),
        child: child,
      ),
    );
  }
}
