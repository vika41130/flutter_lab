
import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleTest extends StatefulWidget {
  const AnimatedDefaultTextStyleTest({super.key});

  @override
  State<AnimatedDefaultTextStyleTest> createState() => _AnimatedDefaultTextStyleTestState();
}

class _AnimatedDefaultTextStyleTestState extends State<AnimatedDefaultTextStyleTest> {

  late bool _isBigger;

  @override
  void initState() {
    super.initState();
    _isBigger = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedDefaultTextStyle(
              style: _isBigger ? 
              const TextStyle(fontSize: 120, fontWeight: FontWeight.bold, color: Colors.red)
              : const TextStyle(fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
              duration: const Duration(seconds: 3),
              textAlign: _isBigger ? TextAlign.right : TextAlign.left,
              onEnd: () {
                debugPrint('Animating end');
              },
              child: const Text('Test')
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _isBigger = !_isBigger;
                });
              },
              icon: const Icon(Icons.zoom_in)
            )
          ],
        ),
      ),
    );
  }
}