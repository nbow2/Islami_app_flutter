import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/My_theme/app_colors.dart';
import 'package:islami_app/provider/config_provider.dart';
import 'package:islami_app/widgets/item_sura_detials.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:provider/provider.dart';

class SuraDetailsScreen extends StatefulWidget {
  static const String routeName = 'Sura_Details';

  const SuraDetailsScreen({super.key});

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetailsArgs;
    var themeprovider = Provider.of<ConfigThemeProvider>(context);
    if (verses.isEmpty) loadFile(args.index);
    return Stack(children: [
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
        body: Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.width * 0.09,
            horizontal: MediaQuery.of(context).size.height * 0.03,
          ),
          decoration: BoxDecoration(
            color: themeprovider.IsLightMode()?
                    AppColors.WhiteColor:AppColors.primaryDarkColor,
            borderRadius: BorderRadius.circular(50.0),

          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    args.name,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                 Divider(
                  color: themeprovider.IsLightMode() ?
                  AppColors.primaryLightColor:AppColors.yellowColor,
                  thickness: 1.30,
                  indent: 20,
                  endIndent: 20,
                ),
                const SizedBox(height: 10.0),
                verses.isEmpty
                    ?  Center(
                        heightFactor: 14,
                        child: CircularProgressIndicator(
                          color: themeprovider.IsLightMode() ?
                          AppColors.primaryLightColor : AppColors.yellowColor,
                          strokeAlign: BorderSide.strokeAlignOutside,
                        ))
                    : Expanded(
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return ItemSuraDetails(
                                content: verses[index], index: index);
                          },
                          itemCount: verses.length,
                        ),
                      )
              ],
            ),
          ),
        ),
      )
    ]);
  }

  void loadFile(int index) async {
    String content =
        await rootBundle.loadString('assets/files/${index + 1}.txt');
    List<String> lines = content.split('\n');
    for (int i = 0; i < lines.length; i++) {
      print(lines[i]);
    }
    verses = lines;
    setState(() {});
  }
}

// data class

class SuraDetailsArgs {
  String name;

  int index;

  SuraDetailsArgs({required this.name, required this.index});
}
