import 'package:flutter/material.dart';
import 'package:revery/pages/main_page.dart';

// ignore: use_key_in_widget_constructors
class Button1 extends StatefulWidget {
  @override
  _Button1State createState() => _Button1State();
}

class _Button1State extends State<Button1> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (c, a1, a2) => MainPage(),
            transitionsBuilder: (c, anim, a2, child) =>
                FadeTransition(opacity: anim, child: child),
            transitionDuration: const Duration(milliseconds: 2000),
          ),
        );
      },
      child: const Text('Continue'),
      style: ElevatedButton.styleFrom(
          primary: Colors.purpleAccent,
          elevation: 5,
          minimumSize: const Size(150, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
          textStyle: const TextStyle(
            fontSize: 18,
            fontFamily: 'Inter',
          )),
    );
  }
}
