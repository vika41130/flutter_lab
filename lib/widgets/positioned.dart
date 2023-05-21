import 'package:flutter/material.dart';

/* 
- position a widget inside a Stack
- top + bottom => height
- left + right => width
 */

class PositionedTest extends StatefulWidget {
  const PositionedTest({super.key});

  @override
  State<PositionedTest> createState() => _PositionedTestState();
}

class _PositionedTestState extends State<PositionedTest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            // bottom: 10,
            // height: 30,
            left: 0,
            // right: 30,
            child: Container(
              color: Colors.amber,
              // width: 30,
              // height: 30,
              child: Container(
                constraints: const BoxConstraints(maxWidth: 30, maxHeight: 30),
                color: Colors.pink,
                child: const Text('Container'),
              ),
            )
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(width: 40, height: 40, color: Colors.amber,))
        ],
      ),
    ));
  }
}
