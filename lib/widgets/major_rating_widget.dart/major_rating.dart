// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_application_3/get_add_star_rating/add_star_rating.dart';
import 'package:flutter_application_3/widgets/centered_view/centered_view.dart';
import 'package:flutter_application_3/widgets/major_rating_widget.dart/major_rating_desktop.dart';
import 'package:flutter_application_3/widgets/major_rating_widget.dart/major_rating_mobile.dart';
import 'package:flutter_application_3/widgets/see_overall_ratings/see_overall_ratings.dart';
import 'package:flutter_application_3/widgets/submit_button/submit_button.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../star_rating/star_rating.dart';

class MajorRating extends StatefulWidget {
  late String title;
  MajorRating(this.title, {Key? key}) : super(key: key);

  @override
  State<MajorRating> createState() => _MajorRatingState();
}

class _MajorRatingState extends State<MajorRating> {
  late String text = widget.title;
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MajorRatingMobile(widget.title),
      desktop: MajorRatingDesktop(widget.title),
    );
  }
}
