import 'package:flutter/material.dart';

class TransforRotateTest extends StatefulWidget {
  const TransforRotateTest({super.key});

  @override
  State<TransforRotateTest> createState() => _TransforRotateTestState();
}

class _TransforRotateTestState extends State<TransforRotateTest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Transform.rotate(
            angle: 90,
            origin: const Offset(30, 30),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.amber,
                border: Border.all(width: 2)
              ),
              width: 300,
              height: 300,
              child: const Text('Container'),
            ),
          ),
        ),
      )
    );
  }
}