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
        displaySmall: TextStyle(
            fontSize: 27,
            fontWeight: FontWeight.w600,
            color: AppColors.BlackColor
        ),
      headlineMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: AppColors.BlackColor
      ),
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
      backgroundColor: AppColors.primaryLightColor,
      selectedItemColor: AppColors.BlackColor,
      unselectedItemColor: AppColors.WhiteColor,
      showSelectedLabels: true,
    ),
  );

  static final ThemeData darkMode = ThemeData(
    primaryColor: AppColors.primaryDarkColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.WhiteColor)),
    textTheme: const TextTheme(
      displaySmall: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.w600,
          color: AppColors.WhiteColor
      ),
      headlineMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: AppColors.WhiteColor
      ),
      bodyLarge: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
        color: AppColors.WhiteColor,
      ),
      bodyMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: AppColors.yellowColor
      ),
      bodySmall: TextStyle(
          fontSize: 22,
          fontWeight: FontWeight.bold,
          color: AppColors.WhiteColor
      ),
      titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w300,
          color: AppColors.yellowColor
      ),
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.primaryDarkColor,
      selectedItemColor: AppColors.yellowColor,
      unselectedItemColor: AppColors.WhiteColor,
      showSelectedLabels: true,
    ),
  );

  static final ThemeData greenMode = ThemeData(
    primaryColor: AppColors.grayColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: const AppBarTheme(
        color: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: AppColors.BlackColor)),
    textTheme: const TextTheme(
      displaySmall: TextStyle(
          fontSize: 27,
          fontWeight: FontWeight.w600,
          color: AppColors.BlackColor
      ),
      headlineMedium: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.w600,
          color: AppColors.BlackColor
      ),
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
      backgroundColor: AppColors.grayColor,
      selectedItemColor: AppColors.BlackColor,
      unselectedItemColor: AppColors.WhiteColor,
      showSelectedLabels: true,
    ),
  );
}
