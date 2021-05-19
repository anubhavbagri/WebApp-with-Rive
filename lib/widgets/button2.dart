import 'package:flutter/material.dart';
import 'package:revery/pages/main_page.dart';

// ignore: use_key_in_widget_constructors
class Button2 extends StatefulWidget {
  @override
  _Button2State createState() => _Button2State();
}

class _Button2State extends State<Button2> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => MainPage()));
      },
      child: const Text('Explore'),
      style: ElevatedButton.styleFrom(
          primary: Colors.purpleAccent,
          elevation: 5,
          minimumSize: const Size(150, 50),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 46),
          textStyle: const TextStyle(
            fontSize: 18,
            fontFamily: 'Inter',
          )),
    );
  }
}
