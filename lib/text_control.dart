import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextControl extends StatelessWidget {

  final VoidCallback clickHandler;

  const TextControl({
    Key? key, required this.clickHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: Colors.amber, onPrimary: Colors.black),
        child: Text('This is a Button!!'),
        onPressed: clickHandler,
      ),
    );
  }
}
