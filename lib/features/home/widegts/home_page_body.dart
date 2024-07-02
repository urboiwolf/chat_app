import 'package:chat_app/features/home/widegts/home_page_circular.dart';
import 'package:chat_app/model/sections_model.dart';
import 'package:flutter/material.dart';

class HomePageBody extends StatelessWidget {
  HomePageBody({super.key});
  final List<SectionsModel> sectionModel = [
    SectionsModel(title: 'short Break'),
    SectionsModel(title: 'Pomodoro'),
    SectionsModel(title: 'Long Break'),
  ];
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        HomeBodyCircularWidget(),
      ],
    );
  }
}
