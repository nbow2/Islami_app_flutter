import 'package:flutter/material.dart';
import 'package:islami_app/My_theme/app_colors.dart';

class MyThemeData {
  static final ThemeData lightMode = ThemeData(
    primaryColor: AppColors.primaryLightColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.BlackColor)),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
      color: AppColors.BlackColor,
      fontSize: 30,
      fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 25,
      ),
      bodySmall: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.BlackColor),
      titleLarge: TextStyle(fontSize: 24, fontWeight: FontWeight.w300),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: AppColors.BlackColor,
      unselectedItemColor: AppColors.WhiteColor,
      showSelectedLabels: true,
    ),
  );
}
