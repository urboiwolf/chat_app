import 'package:chat_app/core/constants/colors.dart';
import 'package:chat_app/core/cubit/app_cubit.dart';
import 'package:chat_app/features/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppState>(
      listener: (context, state) {},
      builder: (context, state) {
        AppCubit cubit = BlocProvider.of(context);
        return Scaffold(
          floatingActionButton: FloatingActionButton(
            elevation: 0.0,
            child: Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                gradient: RadialGradient(
                  colors: [
                    Colors.purple.shade400,
                    mainColor,
                  ],
                ),
              ),
              child: SvgPicture.asset(
                'assets/images/Tick.svg',
                fit: BoxFit.scaleDown,
              ),
            ),
            onPressed: () {},
          ),
          bottomNavigationBar: SalomonBottomBar(
              currentIndex: AppCubit.get(context).currentIndex,
              curve: Curves.decelerate,
              onTap: (index) {
                AppCubit.get(context).changeButton(index);
              },
              items: [
                /// Home
                SalomonBottomBarItem(
                  activeIcon: SvgPicture.asset(
                    'assets/images/home.svg',
                    height: 22,
                    fit: BoxFit.scaleDown,
                  ),
                  icon: SvgPicture.asset(
                    'assets/images/home_outline.svg',
                    height: 22,
                    fit: BoxFit.scaleDown,
                  ),
                  title: const Text("Home"),
                  selectedColor: mainColor,
                ),
                SalomonBottomBarItem(
                  activeIcon: SvgPicture.asset(
                    'assets/images/Setting.svg',
                    height: 22,
                    fit: BoxFit.scaleDown,
                  ),
                  icon: SvgPicture.asset(
                    'assets/images/Setting_outline.svg',
                    height: 22,
                    fit: BoxFit.scaleDown,
                  ),
                  title: const Text("settings"),
                  selectedColor: mainColor,
                )
              ]),
          body: cubit.screens[cubit.currentIndex],
        );
      },
    );
  }
}
