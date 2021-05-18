import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Main Page of Animation", style: TextStyle(
          fontSize: 25,
          color: Colors.black,
          fontFamily: 'Inter'
        ),),
      ),
    );
  }
}
