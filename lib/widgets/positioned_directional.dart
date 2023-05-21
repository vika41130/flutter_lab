import 'package:flutter/material.dart';
/* 
- start + end => width
- top + bottom => height
 */
class PositionedDirectionalTest extends StatefulWidget {
  const PositionedDirectionalTest({super.key});

  @override
  State<PositionedDirectionalTest> createState() => _PositionedDirectionalTestState();
}

class _PositionedDirectionalTestState extends State<PositionedDirectionalTest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            PositionedDirectional(
              // start: 50,
              // end: 100,
              top: 50,
              bottom: 100,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.amber,
                alignment: Alignment.center,
                child: const Text('Container'),
              )
            ),
          ],
        ),
      )
    );
  }
}