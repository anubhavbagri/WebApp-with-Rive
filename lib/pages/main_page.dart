import 'package:flutter/material.dart';
import 'kado_animate.dart';

// ignore: use_key_in_widget_constructors
class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kado Animation',
      theme: ThemeData(
          primarySwatch: Colors.purple,
          textTheme: Theme.of(context).textTheme.apply(
                fontFamily: 'Inter',
              )),
      home: KadoAnimation(),
    );
  }
}
