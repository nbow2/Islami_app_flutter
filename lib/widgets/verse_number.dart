import 'package:flutter/material.dart';

class VerseNumber extends StatelessWidget {
  int Number;

  VerseNumber({super.key, required this.Number});

  @override
  Widget build(BuildContext context) {
    return Text(
      '$Number',
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
