import 'package:flutter/material.dart';

import '../../widgets/centered_view/centered_view.dart';
import '../../widgets/majors_list/majors_final_list.dart';

class MajorsViewDesktop extends StatelessWidget {
  const MajorsViewDesktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 20,
          ),
        ],
      ),
      child: CenteredView(
        hor: 60,
        ver: 10,
        child: MajorsList(),
      ),
    );
  }
}
