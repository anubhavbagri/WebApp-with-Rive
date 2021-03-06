import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:revery/pages/home_page.dart';
import 'package:rive/rive.dart';

class KadoAnimation extends StatefulWidget {
  const KadoAnimation({Key? key}) : super(key: key);
  @override
  _KadoAnimationState createState() => _KadoAnimationState();
}

class _KadoAnimationState extends State<KadoAnimation> {
  bool status = false;

  Artboard? _riveArtboard;
  RiveAnimationController? _controller;
  @override
  void initState() {
    super.initState();

    rootBundle.load('assets/kado-sit-eat.riv').then(
      (data) async {
        final file = RiveFile.import(data);
        final artboard = file.mainArtboard;
        artboard.addController(_controller = SimpleAnimation('Drowsy'));
        setState(() => _riveArtboard = artboard);
        setState(() => _controller!.isActive = !_controller!.isActive);
      },
    );
  }

  void _toggleStart() {
    if (_controller == null) {
      return;
    }
    setState(() => _controller!.isActive = !_controller!.isActive);
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(builder: (context, sizingInformation) {
      double betweenHeight =
          sizingInformation.deviceScreenType == DeviceScreenType.mobile
              ? 20
              : 50;
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
              SizedBox(
                height: betweenHeight,
              ),
              FlutterSwitch(
                value: status,
                onToggle: (val) {
                  setState(() {
                    status = val;
                    _toggleStart();
                  });
                },
              ),
              const SizedBox(
                height: 10,
              ),
              status
                  ? const Text(
                      "Stop",
                      style: TextStyle( fontSize: 25, color: Colors.black, fontFamily: 'Inter'),
                    )
                  : const Text(
                      "Start",
                      style: TextStyle(fontSize: 25, color: Colors.black, fontFamily: 'Inter'),
                    )
            ],
          ),
        ),
      );
    });
  }
}