import 'package:flutter/material.dart';
import 'package:revery/pages/main_page.dart';

// ignore: use_key_in_widget_constructors
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // ignore: sized_box_for_whitespace
        child: Container(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: <Widget>[
              const Text(
                'FLUTTER WEB \nTHE BASICS',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 80,
                    height: 1.0,
                    // color: Color(value),
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontFamily: 'Inter'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'In this course we will go over the basics of using Flutter Web for website development. Topics will include Responsive Layout, Deploying, Font Changes, Hover Functionality, Modals and more.',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    color: Color.fromRGBO(156, 167, 166, 1),
                    height: 1.5,
                    fontFamily: 'Inter'),
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainPage()));
                },
                child: const Text('Continue'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.purpleAccent,
                    elevation: 10,
                    minimumSize: const Size(150, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)),
                    padding: const EdgeInsets.symmetric(
                        vertical: 20, horizontal: 40),
                    textStyle: const TextStyle(
                      fontSize: 18,
                      fontFamily: 'Inter',
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
