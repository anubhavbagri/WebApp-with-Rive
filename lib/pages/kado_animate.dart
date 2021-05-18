import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:rive/rive.dart';

class KadoAnimation extends StatefulWidget {
  const KadoAnimation({Key? key}) : super(key: key);

  @override
  _KadoAnimationState createState() => _KadoAnimationState();
}

class _KadoAnimationState extends State<KadoAnimation> {
  void _togglePlay() {
    if (_controller == null) {
      return;
    }
    setState(() => _controller!.isActive = !_controller!.isActive);
  }

  bool get isPlaying => _controller?.isActive ?? false;

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
      },
    );
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
        child: Padding(
          padding: const EdgeInsets.only(bottom: 200.0),
          child: SizedBox(
            width: 500.0,
            height: 500.0,
            child: _riveArtboard == null
                ? const SizedBox()
                : Rive(artboard: _riveArtboard!),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _togglePlay,
        tooltip: isPlaying ? 'Pause' : 'Play',
        child: Icon(
          isPlaying ? Icons.pause : Icons.play_arrow,
        ),
      ),
    );
  }
}
