import 'package:flutter/material.dart';

class ItemButton {
  final String text;
  final String assets;

  ItemButton({required this.text, required this.assets});

  BottomNavigationBarItem buildBottomNavigationBarItem() {
    return BottomNavigationBarItem(
      icon: ImageIcon(AssetImage('assets/images/$assets')),
      label: text,
    );
  }
}
