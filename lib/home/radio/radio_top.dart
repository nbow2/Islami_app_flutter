import 'package:flutter/material.dart';
import 'package:islami_app/My_theme/app_colors.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_app/provider/config_provider.dart';
import 'package:provider/provider.dart';

class RadioTap extends StatelessWidget {
  const RadioTap({super.key});

  @override
  Widget build(BuildContext context) {
    var themeprovider = Provider.of<ConfigThemeProvider>(context);
    return Scaffold(
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/radio_logo.png'),
              // Update the path to your radio image
              const SizedBox(height: 20),
              Text(
                AppLocalizations.of(context)!.quran_radio,
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon:  Icon(
                      Icons.skip_previous,
                      size: 60,
                      color: themeprovider.IsLightMode() ?
                            AppColors.primaryLightColor:AppColors.yellowColor,
                    ),
                    onPressed: () {
                      // Add your previous button functionality here
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.play_arrow,
                      size: 60,
                      color: themeprovider.IsLightMode() ?
                      AppColors.primaryLightColor:AppColors.yellowColor,
                    ),
                    onPressed: () {
                      // Add your play button functionality here
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.skip_next,
                      size: 60,
                      color: themeprovider.IsLightMode() ?
                      AppColors.primaryLightColor:AppColors.yellowColor,
                    ),
                    onPressed: () {
                      // Add your next button functionality here
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
