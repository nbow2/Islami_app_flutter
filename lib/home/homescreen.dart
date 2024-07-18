import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/My_theme/app_colors.dart';
import 'package:islami_app/home/book/book_tap.dart';
import 'package:islami_app/home/quran/quran_tap.dart';
import 'package:islami_app/home/radio/radio_top.dart';
import 'package:islami_app/home/sebha/sebha_tap.dart';
import 'package:islami_app/home/settings/settings_tap.dart';
import 'package:islami_app/provider/config_provider.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home_screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    var themeprovider = Provider.of<ConfigThemeProvider>(context);
    return Stack(
      children: [
        themeprovider.IsLightMode()?
        Image.asset(
          'assets/images/main_bgimage.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ): Image.asset(
          'assets/images/bg_dark.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              AppLocalizations.of(context)!.islami,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: Theme.of(context).bottomNavigationBarTheme.backgroundColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items:  [
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage('assets/images/icon_quran.png')),
                    label: AppLocalizations.of(context)!.quran),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage('assets/images/icon_book.png')),
                    label: AppLocalizations.of(context)!.hadiths),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage('assets/images/iocn_sebha.png')),
                    label: AppLocalizations.of(context)!.tasbeh),
                BottomNavigationBarItem(
                    icon: const ImageIcon(AssetImage('assets/images/iocn_radio.png')),
                    label: AppLocalizations.of(context)!.radio),
                BottomNavigationBarItem(
                    icon: const Icon(Icons.settings),
                    label: AppLocalizations.of(context)!.settings),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [ QuranTap(),  BookTap(),  SebhaTap(),  RadioTap() ,SettingsTap() ];
}
