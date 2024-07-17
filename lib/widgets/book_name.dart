import 'package:flutter/material.dart';
import 'package:islami_app/home/book/book_Details_screen.dart';
import 'package:islami_app/home/book/book_tap.dart';

class BookName extends StatelessWidget {
  Hadeth hadeth;

  //late String title ;

  BookName({super.key, required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context)
            .pushNamed(BookDetailsScreen.routeName, arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodySmall,
      ),
    );
  }
}
