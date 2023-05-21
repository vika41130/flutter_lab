
import 'package:flutter/material.dart';

class AnimatedopacityTest extends StatefulWidget {
  const AnimatedopacityTest({super.key});

  @override
  State<AnimatedopacityTest> createState() => _AnimatedopacityTestState();
}

class _AnimatedopacityTestState extends State<AnimatedopacityTest> {
  late double _opacity;
  @override
  void initState() {
    super.initState();
    _opacity = 0;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            AnimatedOpacity(
              opacity: _opacity,
              duration: const Duration(seconds: 3),
              onEnd: () {
                debugPrint('End');
              },
              child: Container(
                width: 300,
                height: 300,
                decoration: const BoxDecoration(
                  color: Colors.red
                ),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _opacity = 1;
                    setState(() {});
                  },
                  child: const Text('Animate Opacity'),
                ),
                ElevatedButton(
                  onPressed: () {
                    _opacity = 0;
                    setState(() {});
                  },
                  child: const Text('Reset Opacity'),
                ),
              ],
            )
          ],
        ),
      ),
    ));
  }
}