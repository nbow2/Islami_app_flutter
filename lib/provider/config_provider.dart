import 'package:flutter/material.dart';
class ConfigProvider extends ChangeNotifier{
  /// data languages
  String appLanguage = 'en';

  void ChangeLanguage(String newLang){

    if(appLanguage == newLang){
      return ;
    } else {
      appLanguage = newLang ;
      notifyListeners();
    }

  }

}