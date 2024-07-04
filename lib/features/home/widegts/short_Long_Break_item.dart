import 'package:chat_app/features/home/widegts/active_and_inactive_text.dart';
import 'package:chat_app/model/sections_model.dart';
import 'package:flutter/material.dart';

class ShortLongBreakItem extends StatelessWidget {
  const ShortLongBreakItem(
      {super.key, required this.isSelected, required this.sectionsModel});
  final SectionsModel sectionsModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? ActiveText(
            sectionsModel: sectionsModel,
          )
        : InActiveText(
            sectionsModel: sectionsModel,
          );
  }
}
