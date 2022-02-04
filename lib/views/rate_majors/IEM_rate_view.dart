// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_field, unnecessary_null_comparison

import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/major_rating_widget.dart/major_rating.dart';

class IEMRateView extends StatefulWidget {
  IEMRateView({Key? key}) : super(key: key);

  @override
  State<IEMRateView> createState() => _IEMRateViewState();
}

class _IEMRateViewState extends State<IEMRateView> {
  @override
  Widget build(BuildContext context) {
    return MajorRating("Industrial Engineering and Management");
  }
}
