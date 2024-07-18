import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/My_theme/app_colors.dart';
import 'package:islami_app/provider/config_provider.dart';
import 'package:provider/provider.dart';

class LanguageSheet extends StatefulWidget {
  const LanguageSheet({super.key});

  @override
  State<LanguageSheet> createState() => _LanguageSheetState();
}

class _LanguageSheetState extends State<LanguageSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ConfigProvider>(context);
    var themeprovider = Provider.of<ConfigThemeProvider>(context);
    return Container(

      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: (){
                provider.ChangeLanguage('en');
            },
            /// Selected language
            child: provider.appLanguage == 'en' ?
                    SelectedItem(AppLocalizations.of(context)!.english):
                    UnselectedItem(AppLocalizations.of(context)!.english),
          ),
          SizedBox(height: 10,),
          InkWell(
            onTap: (){
              provider.ChangeLanguage('ar');
            },
              child: provider.appLanguage == 'ar' ?
              SelectedItem(AppLocalizations.of(context)!.arabic):
              UnselectedItem(AppLocalizations.of(context)!.arabic),
          ),
        ],
      ),
    );
  }

  Widget SelectedItem(String text){
    var Themeprovider = Provider.of<ConfigThemeProvider>(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: Themeprovider.IsLightMode() ?
              AppColors.primaryLightColor: AppColors.primaryDarkColor
          ),
        ),
        const Icon(Icons.check)
      ],
    );
  }

  Widget UnselectedItem(String text){
    var Themeprovider = Provider.of<ConfigThemeProvider>(context);
    return Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: Themeprovider.IsLightMode() ?
          AppColors.primaryLightColor: AppColors.primaryDarkColor
      ),
    );
  }
}
