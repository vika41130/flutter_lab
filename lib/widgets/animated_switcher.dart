import 'package:flutter/material.dart';

class AnimatedSwitcherTest extends StatefulWidget {
  const AnimatedSwitcherTest({super.key});

  @override
  State<AnimatedSwitcherTest> createState() => _AnimatedSwitcherTestState();
}

class _AnimatedSwitcherTestState extends State<AnimatedSwitcherTest> {
  int _count = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              AnimatedSwitcher(
                duration: const Duration(seconds: 1),
                transitionBuilder: (Widget child, Animation<double> animation) {
                  return ScaleTransition(scale: animation, child: child);
                },
                layoutBuilder: (currentChild, previousChildren) {
                  return Column(
                    children: [
                      ...previousChildren,
                      currentChild!,
                    ],
                  );
                },
                child: Text(
                  '$_count',
                  // This key causes the AnimatedSwitcher to interpret this as a "new"
                  // child each time the count changes, so that it will begin its animation
                  // when the count changes.
                  key: ValueKey<int>(_count),
                  style: const TextStyle(fontSize: 100)
                ),
              ),
              const Spacer(),
              ElevatedButton(
                child: const Text('Increment'),
                onPressed: () {
                  setState(() {
                    _count += 1;
                  });
                },
              ),
            ],
          ),
        ),
      )
    );
  }
}