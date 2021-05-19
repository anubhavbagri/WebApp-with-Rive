import 'package:flutter/material.dart';
import 'package:revery/pages/main_page.dart';
// import 'package:responsive_builder/responsive_builder.dart';

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
            children: <Widget>[
              const Text(
                'CUTE KADO \nFEELS DROWSY',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.w800,
                    fontSize: 75,
                    height: 1.0,
                    color: Color.fromRGBO(51, 51, 51, 1),
                    fontFamily: 'Inter'),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Kado, the Koala is a symbol of your gateway to the dream world. Immerse with him in deep slumber as sleep is the best way to improve your health. Continue to see how you could control his sleepiness!',
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
