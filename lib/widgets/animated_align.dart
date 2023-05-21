
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AnimatedAlignTest extends StatefulWidget {
  const AnimatedAlignTest({super.key});

  @override
  State<AnimatedAlignTest> createState() => _AnimatedAlignTestState();
}

class _AnimatedAlignTestState extends State<AnimatedAlignTest> {

  late Alignment _alignment;

  @override
  void initState() {
    super.initState();
    _alignment = Alignment.topLeft;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            AnimatedAlign(
              alignment: _alignment,
              duration: Duration(seconds: 5),
              curve: Curves.easeInSine,
              child: Text('Test'),
              onEnd: () {
                debugPrint('Animating end');
              },
            ),
            Align(
              alignment: Alignment.center,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                  _alignment = Alignment.bottomRight;
                  });
                },
                child: Text('Move', style: TextStyle(fontSize: 30),)
              ),
            )
          ],
        ),
      ),
    );
  }
}