// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, unnecessary_null_comparison, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/major_rating_widget.dart/major_rating.dart';

class CSRateView extends StatefulWidget {
  CSRateView({Key? key}) : super(key: key);

  @override
  State<CSRateView> createState() => _CSRateViewState();
}

class _CSRateViewState extends State<CSRateView> {
  @override
  Widget build(BuildContext context) {
    return MajorRating("Computer Science");
  }
}