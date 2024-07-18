import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:islami_app/widgets/book_name.dart';
import 'package:islami_app/My_theme/app_colors.dart';
import 'package:islami_app/provider/config_provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class BookTap extends StatefulWidget {
  const BookTap({super.key});

  @override
  State<BookTap> createState() => _BookTapState();
}

class _BookTapState extends State<BookTap> {
  List<Hadeth> hadathList = [];

  @override
  void initState() {
    super.initState();
    if (hadathList.isEmpty) loadBookFile();
  }

  @override
  Widget build(BuildContext context) {

    var themeprovider = Provider.of<ConfigThemeProvider>(context);

    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Image.asset('assets/images/book_icon.png'),
           Divider(
            color: themeprovider.IsLightMode() ?
            AppColors.primaryLightColor:AppColors.yellowColor,
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Text(
                  AppLocalizations.of(context)!.hadith_number,
                  style: Theme.of(context).textTheme.headlineMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
           Divider(
            color: themeprovider.IsLightMode() ?
            AppColors.primaryLightColor:AppColors.yellowColor,
            thickness: 3,
          ),
          hadathList.isEmpty
              ? Center(
                  heightFactor: MediaQuery.of(context).size.height * 0.01,
                  child: CircularProgressIndicator(
                    color:themeprovider.IsLightMode() ?
                    AppColors.primaryLightColor : AppColors.yellowColor,
                  ),
                )
              : Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 1,
                      childAspectRatio: 8,
                    ),
                    itemBuilder: (context, index) {
                      return BookName(
                        hadeth: hadathList[index],
                      );
                    },
                    itemCount: hadathList.length,
                  ),
                ),
        ],
      ),
    );
  }

  void loadBookFile() async {
    String hadethContent =
        await rootBundle.loadString('assets/files/ahadeth.txt');
    List<String> hadthList = hadethContent.split('#\r\n');
    for (int i = 0; i < hadthList.length; i++) {
      List<String> haadthLines = hadthList[i].split('\n');
      String title = haadthLines[0];
      haadthLines.removeAt(0);
      Hadeth hadeth = Hadeth(title: title, content: haadthLines);
      setState(() {
        hadathList.add(hadeth);
      });
    }
  }
}

class Hadeth {
  String title;
  List<String> content;

  Hadeth({required this.title, required this.content});
}
