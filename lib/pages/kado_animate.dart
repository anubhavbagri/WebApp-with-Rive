import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_switch/flutter_switch.dart';
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
        artboard.addController(_controller = SimpleAnimation('Eating'));
        setState(() => _riveArtboard = artboard);
        setState(() => _controller!.isActive = !_controller!.isActive);
      },
    );
  }

  void _togglePlay() {
    if (_controller == null) {
      return;
    }
    setState(() => _controller!.isActive = !_controller!.isActive);
  }

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
      body: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: SizedBox(
                width: 450.0,
                height: 450.0,
                child: _riveArtboard == null
                    ? const SizedBox()
                    : Rive(artboard: _riveArtboard!),
              ),
            ),
            FlutterSwitch(
              value: status,
              onToggle: (val) {
                setState(() {
                  status = val;
                  _togglePlay();
                });
              },
            ),
            const SizedBox(
              height: 10,
            ),
            status
                ? const Text(
                    "Stop",
                    style: TextStyle(
                        fontSize: 25, color: Colors.black, fontFamily: 'Inter'),
                  )
                : const Text(
                    "Start",
                    style: TextStyle(
                        fontSize: 25, color: Colors.black, fontFamily: 'Inter'),
                  )
          ],
        ),
      ),
    );
  }
}
