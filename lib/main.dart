import 'package:flutter/material.dart';
import 'package:revery/pages/home_page.dart';

void main() {
  runApp(ReveryApp());
}

// ignore: use_key_in_widget_constructors
class ReveryApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kado Animation',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Inter',
              )),
      home: HomePage(),
    );
  }
}
