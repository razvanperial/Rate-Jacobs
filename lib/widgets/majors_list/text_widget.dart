import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class TextWidget extends StatelessWidget {
  final String title;
  const TextWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double size =
          sizingInformation.deviceScreenType == DeviceScreenType.desktop
              ? 23
              : 18;
      return Text(
        title,
        style: TextStyle(
          fontSize: size,
          color: Color.fromARGB(255, 247, 208, 150),
        ),
      );
    });
  }
}
