
import 'package:flutter/material.dart';

class AnimatedContainerTest extends StatefulWidget {
  const AnimatedContainerTest({super.key});

  @override
  State<AnimatedContainerTest> createState() => _AnimatedContainerTestState();
}

class _AnimatedContainerTestState extends State<AnimatedContainerTest> with SingleTickerProviderStateMixin {
  late bool _isBigger;
  @override
  void initState() {
    super.initState();
    _isBigger = false;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(),
              AnimatedContainer(
                decoration: BoxDecoration(
                  color: Colors.cyan,
                  border: Border.all(color: Colors.black, width: 5),
                ),
                foregroundDecoration: BoxDecoration(
                  color: Colors.amber,
                  border: Border.all(color: Colors.pink, width: 5),
                  shape: BoxShape.circle,
                ),
                // clipBehavior: Clip.antiAliasWithSaveLayer,
                // curve: Curves.decelerate,
                width: _isBigger ? 300 : 100,
                height: _isBigger ? 300 : 100,
                duration: const Duration(seconds: 2),
                alignment: Alignment.center,
                onEnd: () {
                  debugPrint('Animating end');
                },
                child: const Text('Scale'),
              ),
              IconButton(
                onPressed: () {
                  setState(() {
                    _isBigger = !_isBigger;
                  });
                },
                icon: const Icon(Icons.hail)
              )
            ],
          ),
        )
      ),
    );
  }
}