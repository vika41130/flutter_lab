
import 'package:flutter/material.dart';

/* 
- 2 * pi: 1 round
- turns = existing value + param value
ex. existing is 1, param is 2, will be 3
- rotate follow param direction (clockwise/counterclockwise)
- if already rotated, It will be allowed to rotate opposite direction 
- if not already rotated, It can be rotated clockwise or counterclockwise
ex. direction is null, can be clockwise or counterclockwise
if clockwise will be counterclockwise
if counterclockwise, will be clockwise
 */

class AnimatedRotationTest extends StatefulWidget {
  const AnimatedRotationTest({super.key});

  @override
  State<AnimatedRotationTest> createState() => _AnimatedRotationTestState();
}

class _AnimatedRotationTestState extends State<AnimatedRotationTest> {
  late double _roundCount;
  @override
  void initState() {
    super.initState();
    _roundCount = 0;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              AnimatedRotation(
                turns: _roundCount,
                duration: const Duration(seconds: 10),
                onEnd: () {
                  debugPrint('End');
                },
                child: Container(
                  alignment: Alignment.center,
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: const Text('AnimatedRotation', style: TextStyle(fontSize: 20),)
                ),
              ),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _roundCount = 1;
                      });
                    },
                    child: const Text('Clockwise')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        _roundCount = -1;
                      });
                    },
                    child: const Text('Counterclockwise')
                  ),
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}