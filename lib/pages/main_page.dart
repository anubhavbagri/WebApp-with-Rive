import 'package:flutter/material.dart';

// ignore: use_key_in_widget_constructors
class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
      ),
      body: const Center(
        child: Text(
          "Main Page of Animation",
          style:
              TextStyle(fontSize: 25, color: Colors.black, fontFamily: 'Inter'),
        ),
      ),
    );
  }
}
