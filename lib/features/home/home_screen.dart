import 'package:chat_app/features/home/widegts/home_page_body.dart';
import 'package:chat_app/features/home/widegts/home_page_header.dart';
import 'package:chat_app/features/home/widegts/short_long-break_listview.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              const HomePageHeader(),
              const SizedBox(
                height: 45,
              ),
              HomePageBody(),
              const SizedBox(
                height: 45,
              ),
              const ShortLongBreakListView(),
            ],
          ),
        ),
      ),
    );
  }
}
