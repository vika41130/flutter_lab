
import 'package:flutter/material.dart';

class AnimatedSlidetest extends StatefulWidget {
  const AnimatedSlidetest({super.key});

  @override
  State<AnimatedSlidetest> createState() => _AnimatedSlidetestState();
}

class _AnimatedSlidetestState extends State<AnimatedSlidetest> {
  late bool _isSlide;
  @override
  void initState() {
    super.initState();
    _isSlide = false;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            AnimatedSlide(
              offset: _isSlide ? const Offset(50, 50) : const Offset(10, 10),
              duration: const Duration(seconds: 10),
              onEnd: () {
                debugPrint('Slide end');
              },
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(color: Colors.amber),
                child: const Text('Container'),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isSlide = !_isSlide;
                });
              },
              child: const Text('Slide'),
            ),
          ],
        ),
      ),
    ));
  }
}