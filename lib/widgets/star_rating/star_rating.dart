// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors_in_immutables, unnecessary_this, prefer_const_constructors, prefer_final_fields, unused_field

import 'package:flutter/material.dart';

class Rating extends StatefulWidget {
  final int maxRating;
  final Function(int) onRatingSelected;
  Rating(this.onRatingSelected, {this.maxRating = 5});

  @override
  State<Rating> createState() => _RatingState();
}

class _RatingState extends State<Rating> {
  int _currentRating = 0;
  @override
  Widget build(BuildContext context) {
    return _buildBody();
  }

  Widget _buildBody() {
    final stars = List<Widget>.generate(
      this.widget.maxRating,
      (index) {
        return GestureDetector(
          child: _buildRatingStar(index),
          onTap: () {
            setState(() {
              _currentRating = index + 1;
            });
            this.widget.onRatingSelected(_currentRating);
          },
        );
      },
    );
    return Row(
      children: [
        MouseRegion(
          cursor: SystemMouseCursors.click,
          child: Row(
            children: stars,
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              _currentRating = 0;
            });
            this.widget.onRatingSelected(_currentRating);
          },
          child: Text(
            "Clear",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }

  Widget _buildRatingStar(int index) {
    if (index < _currentRating) {
      return Icon(
        Icons.star,
        color: Colors.orange,
        size: 50,
      );
    }

    return Icon(Icons.star_border_outlined, color: Colors.white, size: 50);
  }
}
