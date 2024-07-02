import 'package:chat_app/core/constants/colors.dart';
import 'package:chat_app/model/sections_model.dart';
import 'package:flutter/material.dart';

class ActiveText extends StatelessWidget {
  const ActiveText({super.key, required this.sectionsModel});
  final SectionsModel sectionsModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            sectionsModel.title,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: mainColor),
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Container(
          width: 60.27,
          height: 4.27,
          decoration: BoxDecoration(color: mainColor),
        ),
      ],
    );
  }
}

class InActiveText extends StatelessWidget {
  const InActiveText({super.key, required this.sectionsModel});
  final SectionsModel sectionsModel;
  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.scaleDown,
      child: Text(
        sectionsModel.title,
        style: TextStyle(fontSize: 16, color: grey),
      ),
    );
  }
}
