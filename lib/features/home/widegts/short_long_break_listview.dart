import 'package:chat_app/model/sections_model.dart';
import 'package:chat_app/features/home/widegts/short_Long_Break_item.dart';
import 'package:flutter/material.dart';

class ShortLongBreakListView extends StatefulWidget {
  const ShortLongBreakListView({super.key});

  @override
  State<ShortLongBreakListView> createState() => _ShortLongBreakListViewState();
}

class _ShortLongBreakListViewState extends State<ShortLongBreakListView> {
  final items = [
    SectionsModel(
      title: 'short Break',
    ),
    SectionsModel(
      title: 'Pomodoro',
    ),
    SectionsModel(
      title: 'Long Break',
    ),
  ];
  int selectedIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(0);
          },
          child: ShortLongBreakItem(
            isSelected: selectedIndex == 0,
            sectionsModel: items[0],
          ),
        )),
        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(1);
          },
          child: ShortLongBreakItem(
            isSelected: selectedIndex == 1,
            sectionsModel: items[1],
          ),
        )),
        Expanded(
            child: GestureDetector(
          onTap: () {
            updateIndex(2);
          },
          child: ShortLongBreakItem(
            isSelected: selectedIndex == 2,
            sectionsModel: items[2],
          ),
        )),
      ],
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
