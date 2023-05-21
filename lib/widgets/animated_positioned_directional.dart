import 'package:flutter/material.dart';

class AnimatedPositionedDirectionalTest extends StatefulWidget {
  const AnimatedPositionedDirectionalTest({super.key});

  @override
  State<AnimatedPositionedDirectionalTest> createState() => _AnimatedPositionedDirectionalTestState();
}

class _AnimatedPositionedDirectionalTestState extends State<AnimatedPositionedDirectionalTest> {
  late bool _isAnimate;
  @override
  void initState() {
    super.initState();
    _isAnimate = false;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Stack(
        children: [
          AnimatedPositionedDirectional(
            duration: const Duration(seconds: 1),
            start: _isAnimate ? 200 : 10,
            // end: _isAnimate ? 200 : 10,
            // top: _isAnimate ? 200 : 10,
            // bottom: _isAnimate ? 200 : 10,
            onEnd: () {
              debugPrint('End');
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.red,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              onPressed: () {
                _isAnimate = !_isAnimate;
                setState(() {});
              },
              child: const Text('Animate')
            ),
          )
        ],
      ),
    ));
  }
}