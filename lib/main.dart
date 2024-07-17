import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/My_theme/my_theme_data.dart';
import 'package:islami_app/home/book/book_Details_screen.dart';
import 'package:islami_app/home/quran/sura_Details_screen.dart';
import 'package:islami_app/provider/config_provider.dart';
import 'package:provider/provider.dart';
import 'home/homescreen.dart';
import 'home/temp.dart';

void main() {
  runApp(
      ChangeNotifierProvider(
          create: (context)=> ConfigProvider() ,
          child: MyApp())
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ConfigProvider>(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Islami App',
      theme: MyThemeData.lightMode,
      locale: Locale(provider.appLanguage),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      // Define the initial route of your application
      initialRoute: HomeScreen.routeName,
      // Define named routes
      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        SuraDetailsScreen.routeName: (context) => const SuraDetailsScreen(),
        BookDetailsScreen.routeName: (context) => const BookDetailsScreen(),
        Quran.routeName: (context) => const Quran(),
      },
    );
  }
}
