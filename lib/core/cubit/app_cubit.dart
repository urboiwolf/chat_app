import 'package:bloc/bloc.dart';
import 'package:chat_app/features/home/home_screen.dart';
import 'package:chat_app/features/settings/settings_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

part 'app_state.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(AppInitial());
  static AppCubit get(context) => BlocProvider.of(context);
  int currentIndex = 0;
  List<Widget> screens = [
    const HomeScreen(),
    const SettingsScreen(),
  ];
  void changeButton(int index) {
    currentIndex = index;
    emit(ButtonChangeState());
  }
}
