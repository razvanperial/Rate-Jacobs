// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:flutter_application_3/widgets/majors_list/majors_list.dart';
import 'package:flutter_application_3/widgets/majors_list/majors_list_item.dart';
import 'package:flutter_application_3/widgets/majors_list/majors_list_item_widget.dart';

class MajorsList extends StatelessWidget {
  final listKey = GlobalKey<AnimatedListState>();
  final List<MajorsListItem> items = List.from(majorsListItems);
  MajorsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'Pick a Major',
          style: TextStyle(color: Colors.white, fontSize: 30),
        ),
        SizedBox(height: 30),
        Expanded(
          child: AnimatedList(
            key: listKey,
            initialItemCount: items.length,
            itemBuilder: (context, index, animation) {
              return MajorsListItemWidget(
                animation, //animation
                () => addRemoveItem(index), //onClicked
                items[index].title1, //title
              );
            },
          ),
        ),
      ],
    );
  }

  void addRemoveItem(int index) {
    if (items[index].state == false) {
      //adding
      final newElement = MajorsListItem('default');
      items.insert(index + 1, newElement);
      listKey.currentState!.insertItem(index + 1);
      items[index].state = true;
    } else {
      //removing
      final removedItem = items[index + 1];
      items.removeAt(index + 1);
      listKey.currentState?.removeItem(
        index + 1,
        (context, animation) => MajorsListItemWidget(
          animation,
          () {},
          removedItem.title1,
        ),
      );
      items[index].state = false;
    }
  }
}
