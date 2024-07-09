import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:islami_app/My_theme/my_theme_data.dart';
import 'package:islami_app/home/book/book_Details_screen.dart';
import 'package:islami_app/home/quran/sura_Details_screen.dart';
import 'home/homescreen.dart';
import 'home/temp.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      theme: MyThemeData.lightMode,
      // Define the initial route of your application
      initialRoute: HomeScreen.routeName,
      // Define named routes
      routes: {
        HomeScreen.routeName: (context) => HomeScreen(),
        SuraDetailsScreen.routeName: (context) => SuraDetailsScreen(),
        BookDetailsScreen.routeName: (context) => BookDetailsScreen(),
        Quran.routeName: (context) => Quran(),
      },
    );
  }
}
