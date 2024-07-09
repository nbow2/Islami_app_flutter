import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islami_app/My_theme/app_colors.dart';
import 'package:islami_app/widgets/book_name.dart';

class BookTap extends StatefulWidget {
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
    return Container(
      color: Colors.transparent,
      child: Column(
        children: [
          Image.asset('assets/images/book_icon.png'),
          const Divider(
            color: AppColors.primaryLightColor,
            thickness: 3,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: Text(
                  'Book Name',
                  style: Theme.of(context).textTheme.bodyMedium,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          const Divider(
            color: AppColors.primaryLightColor,
            thickness: 3,
          ),
          hadathList.isEmpty
              ? Center(
                  heightFactor: MediaQuery.of(context).size.height * 0.01,
                  child: const CircularProgressIndicator(
                    color: AppColors.primaryLightColor,
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
