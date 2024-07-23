import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/My_theme/app_colors.dart';
import 'package:islami_app/provider/config_provider.dart';
import 'package:provider/provider.dart';

class ThemeSheet extends StatefulWidget {
  const ThemeSheet({super.key});

  @override
  State<ThemeSheet> createState() => _ThemeSheetState();
}

class _ThemeSheetState extends State<ThemeSheet> {
  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<ConfigProvider>(context);
    var Themeprovider = Provider.of<ConfigThemeProvider>(context);
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          InkWell(
            onTap: (){
                  // change theme to light
                Themeprovider.ChangeTheme(ThemeMode.light);
            },
            /// Selected language
            child:  Themeprovider.Theme == ThemeMode.light ?
                    SelectedItem(AppLocalizations.of(context)!.light_theme):
                    UnselectedItem(AppLocalizations.of(context)!.light_theme),
          ),
          const SizedBox(height: 10,),
          InkWell(
            onTap: (){
              Themeprovider.ChangeTheme(ThemeMode.dark);
            },
              child: Themeprovider.IsDarkMode() ?
              SelectedItem(AppLocalizations.of(context)!.dark_theme):
              UnselectedItem(AppLocalizations.of(context)!.dark_theme),
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
