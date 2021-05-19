import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:revery/pages/home_page.dart';
import 'package:rive/rive.dart';

class NewAnimation extends StatefulWidget {
  const NewAnimation({Key? key}) : super(key: key);
  @override
  _NewAnimationState createState() => _NewAnimationState();
}

class _NewAnimationState extends State<NewAnimation> {
  bool status = false;

  Artboard? _riveArtboard;
  // ignore: unused_field
  RiveAnimationController? _controller;
  @override
  void initState() {
    super.initState();

    rootBundle.load('assets/kado-sit-eat.riv').then(
      (data) async {
        final file = RiveFile.import(data);
        final artboard = file.mainArtboard;
        artboard.addController(_controller = SimpleAnimation('Eating'));
        setState(() => _riveArtboard = artboard);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () => Navigator.push(
              context,
              PageRouteBuilder(pageBuilder: (_, __, ___) => HomePage()),
            ),
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
        ),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 450.0,
                height: 450.0,
                child: _riveArtboard == null
                    ? const SizedBox()
                    : Rive(artboard: _riveArtboard!),
              ),
            ],
          ),
        ),
      );
    });
  }
}
