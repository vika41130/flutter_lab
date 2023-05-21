
import 'package:flutter/material.dart';

class OpacityTest extends StatefulWidget {
  const OpacityTest({super.key});

  @override
  State<OpacityTest> createState() => _OpacityTestState();
}

class _OpacityTestState extends State<OpacityTest> {
  late double _opacity;
  @override
  void initState() {
    super.initState();
    _opacity = 0.1;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            Opacity(
              opacity: _opacity,
              child: Container(
                width: 100,
                height: 100,
                decoration: const BoxDecoration(
                  color: Colors.amber
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                if (_opacity >= 1) {
                  debugPrint('return');
                  return;
                }
                _opacity += 0.1;
                if (_opacity > 1) {
                  _opacity = 1;
                }
                setState(() {
                });
                debugPrint(_opacity.toString());
              },
              child: const Text('Change Opacity')
            ),
          ],
        ),
      ),
    ));
  }
}