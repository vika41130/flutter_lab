
import 'package:flutter/material.dart';

class AnimatedPaddingTest extends StatefulWidget {
  const AnimatedPaddingTest({super.key});

  @override
  State<AnimatedPaddingTest> createState() => _AnimatedPaddingTestState();
}

class _AnimatedPaddingTestState extends State<AnimatedPaddingTest> {
  late bool _isPaddingBigger;
  @override
  void initState() {
    super.initState();
    _isPaddingBigger = false;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Container(
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: AnimatedPadding(
                padding: _isPaddingBigger ? const EdgeInsets.all(50) : const EdgeInsets.all(10),
                duration: const Duration(seconds: 3),
                onEnd: () {
                  debugPrint('End');
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.amber
                  ),
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                _isPaddingBigger =! _isPaddingBigger;
                setState(() {
                  
                });
              },
              child: const Text('Padding Bigger')
            )
          ],
        ),
      ),
    ));
  }
}