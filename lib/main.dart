// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/locator.dart';
import 'package:flutter_application_3/views/home/home_view.dart';
import 'package:flutter_application_3/views/layout_template/layout_template.dart';

void main() {
  setuplocator();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rate Jacobs',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Be Vietnam Pro',
            ),
      ),
      home: LayoutTemplate(),
    );
  }
}
