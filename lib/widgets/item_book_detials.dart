import 'package:flutter/material.dart';

class ItemBookDetails extends StatelessWidget {
  String content;

  ItemBookDetails({required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
