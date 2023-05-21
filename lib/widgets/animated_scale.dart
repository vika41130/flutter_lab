
import 'package:flutter/material.dart';

/* filterQuality
null: original
#null: faded when animating, turn original when animating end
 */

class AnimatedScaleTest extends StatefulWidget {
  const AnimatedScaleTest({super.key});

  @override
  State<AnimatedScaleTest> createState() => _AnimatedScaleTestState();
}

class _AnimatedScaleTestState extends State<AnimatedScaleTest> {
  late bool _isBigger;
  @override
  void initState() {
    super.initState();
    _isBigger = false;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Spacer(),
              AnimatedScale(
                alignment: Alignment.center,
                scale: _isBigger ? 10 : 1,
                duration: const Duration(seconds: 2),
                filterQuality: FilterQuality.high,
                curve: Curves.easeInSine,
                onEnd: () {
                  debugPrint('End');
                },
                child: Container(
                  width: 30,
                  height: 30,
                  decoration: const BoxDecoration(color: Colors.amber),
                  child: const Text('Container'),
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isBigger = !_isBigger;
                  });
                },
                child: const Text('Scale up', style: TextStyle(fontSize: 20),)
              ),
            ],
          ),
        ),
      )
    );
  }
}