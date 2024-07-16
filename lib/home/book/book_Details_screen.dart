import 'package:flutter/material.dart';
import 'package:islami_app/My_theme/app_colors.dart';
import 'package:islami_app/home/book/book_tap.dart';
import 'package:islami_app/widgets/item_book_detials.dart';

class BookDetailsScreen extends StatefulWidget {
  static const String routeName = 'Book_Details';

  const BookDetailsScreen({super.key});

  @override
  State<BookDetailsScreen> createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(children: [
      Image.asset(
        'assets/images/main_bgimage.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
      ),
      Scaffold(
        appBar: AppBar(
          title: Text(
            'Islami',
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(
            vertical: MediaQuery.of(context).size.width * 0.09,
            horizontal: MediaQuery.of(context).size.height * 0.03,
          ),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 1.0,
              )
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    args.title,
                    style: Theme.of(context).textTheme.bodyMedium,
                    textAlign: TextAlign.center,
                  ),
                ),
                const Divider(
                  color: AppColors.primaryLightColor,
                  thickness: 1.30,
                  indent: 20,
                  endIndent: 20,
                ),
                const SizedBox(height: 10.0),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ItemBookDetails(content: args.content[index]);
                    },
                    itemCount: args.content.length,
                  ),
                )
              ],
            ),
          ),
        ),
      )
    ]);
  }
}
