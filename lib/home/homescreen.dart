import 'package:flutter/material.dart';
import 'package:islami_app/My_theme/app_colors.dart';
import 'package:islami_app/home/book/book_tap.dart';
import 'package:islami_app/home/quran/quran_tap.dart';
import 'package:islami_app/home/radio/radio_top.dart';
import 'package:islami_app/home/sebha/sebha_tap.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home_screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/main_bgimage.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text(
              'Islami',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: AppColors.primaryLightColor),
            child: BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (index) {
                selectedIndex = index;
                setState(() {});
              },
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_quran.png')),
                    label: 'Quran'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/icon_book.png')),
                    label: 'Book'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/iocn_sebha.png')),
                    label: 'Sebha'),
                BottomNavigationBarItem(
                    icon: ImageIcon(AssetImage('assets/images/iocn_radio.png')),
                    label: 'Radio'),
              ],
            ),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
  }

  List<Widget> tabs = [QuranTap(), BookTap(), SebhaTap(), RadioTap()];
}
