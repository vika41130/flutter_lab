import 'package:flutter/material.dart';

class AnimatedSizeTest extends StatefulWidget {
  const AnimatedSizeTest({super.key});

  @override
  State<AnimatedSizeTest> createState() => _AnimatedSizeTestState();
}

class _AnimatedSizeTestState extends State<AnimatedSizeTest> {
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
            children: [
              const Spacer(),
              AnimatedSize(
                duration: const Duration(seconds: 2),
                reverseDuration: const Duration(seconds: 5),
                child: Container(
                  width: _isBigger ? 300 : 100,
                  height: _isBigger ? 300 : 100,
                  color: Colors.red,
                ),
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  _isBigger = !_isBigger;
                  setState(() {});
                },
                child: const Text('Bigger')
              )
            ],
          ),
        ),
      )
    );
  }
}