// 1) Create a new Flutter App (in this project) and output an AppBar and some text
// below it
// 2) Add a button which changes the text (to any other text of your choice)
// 3) Split the app into three widgets: App, TextControl & Text

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/text_control.dart';
import 'package:flutter_assignment/text_to_show.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _text = 'This is a Text!!';

  void _changeText() {
    setState(() {
      _text = 'The text is changed!!!';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Flutter Assignment'),
          ),
          body: Center(
            child: Column(
              children: <Widget>[
                TextToShow(textToShow: _text),
                TextControl(clickHandler: _changeText,),
              ],
            ),
          )),
    );
  }
}
