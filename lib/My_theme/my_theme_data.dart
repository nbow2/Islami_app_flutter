import 'package:flutter/material.dart';
import 'package:islami_app/My_theme/app_colors.dart';

class MyThemeData {
  static final ThemeData lightMode = ThemeData(
    primaryColor: AppColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent, elevation: 0, centerTitle: true),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
      color: AppColors.BlackColor,
      fontSize: 30,
      fontWeight: FontWeight.bold,
    )),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.BlackColor,
      unselectedItemColor: AppColors.WhiteColor,
      showSelectedLabels: true,
    ),
  );
}
