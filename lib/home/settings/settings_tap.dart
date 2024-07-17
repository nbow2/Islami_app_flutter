import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/My_theme/app_colors.dart';
import 'package:islami_app/home/settings/language_sheet.dart';
import 'package:islami_app/provider/config_provider.dart';
import 'package:provider/provider.dart';

class SettingsTap extends StatefulWidget {
  static const String routeName = 'settings';

  const SettingsTap({super.key});

  @override
  State<SettingsTap> createState() => _SettingsTapState();
}

class _SettingsTapState extends State<SettingsTap> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ConfigProvider>(context);
    return Container(
      margin: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10,),
          Text(
            AppLocalizations.of(context)!.language,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(height: 20 ,),
          InkWell(
            onTap: (){
              Showlang();
            },
            child: Container(
              padding: EdgeInsets.all(11),
              decoration: BoxDecoration(
                color: AppColors.primaryLightColor,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text( provider.appLanguage == 'en' ?
                          AppLocalizations.of(context)!.english:
                          AppLocalizations.of(context)!.arabic,
                  style: Theme.of(context).textTheme.bodyMedium,),
                  Icon(  Icons.arrow_drop_down),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  void Showlang() {
    showModalBottomSheet(context: context,
        builder: (context) => LanguageSheet()
    );
  }
}




