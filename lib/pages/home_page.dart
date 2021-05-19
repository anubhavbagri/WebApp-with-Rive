import 'package:flutter/material.dart';
import 'package:revery/widgets/intro_story.dart';


// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: IntroStory()),
    );
  }
}
