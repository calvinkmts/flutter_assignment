import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextToShow extends StatelessWidget {

  final String textToShow;

  const TextToShow({
    Key? key, required this.textToShow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(textToShow);
  }
}
