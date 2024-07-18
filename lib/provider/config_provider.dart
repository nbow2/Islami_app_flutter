import 'package:flutter/material.dart';
class ConfigProvider extends ChangeNotifier{
  /// data languages
  String appLanguage = 'en';

  String check = '';

  void ChangeLanguage(String newLang){

    if(appLanguage == newLang){
      return ;
    } else {
      appLanguage = newLang ;
      notifyListeners();
    }

  }


}

class ConfigThemeProvider extends ChangeNotifier {

  ThemeMode Theme = ThemeMode.light ;

  void ChangeTheme(ThemeMode mode){

    if(Theme == mode){
      return ;
    } else {
      Theme = mode ;
      notifyListeners();
    }
  }

  bool IsDarkMode(){
    return Theme == ThemeMode.dark ;
  }
  
  bool IsLightMode(){
    return Theme == ThemeMode.light;
  }


}