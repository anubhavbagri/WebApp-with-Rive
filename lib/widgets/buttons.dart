import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'button1.dart';
import 'button2.dart';

// ignore: use_key_in_widget_constructors
class Buttons extends StatefulWidget {
  @override
  _ButtonsState createState() => _ButtonsState();
}

class _ButtonsState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Button1(),
          const SizedBox(
            height: 30,
          ),
          Button2(),
        ],
      ),
      desktop: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Button1(),
          const SizedBox(
            width: 80,
          ),
          Button2(),
        ],
      ),
    );
  }
}
