// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class MajorsListItem {
  final String title1;
  bool state;
  final String navigationPath;
  MajorsListItem(this.title1, this.navigationPath, {this.state = false});
}
