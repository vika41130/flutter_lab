import 'package:flutter/material.dart';

class TweenDoubleTest extends StatefulWidget {
  const TweenDoubleTest({super.key});

  @override
  State<TweenDoubleTest> createState() => _TweenDoubleTestState();
}

class _TweenDoubleTestState extends State<TweenDoubleTest> {
  double _end = 3.14;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              TweenAnimationBuilder(
                tween: Tween<double>(begin: 0, end: _end),
                duration: const Duration(seconds: 2),
                builder: (_, value, __) {
                  return Transform.rotate(
                    angle: value,
                    child: Container(
                      width: 200,
                      height: 200,
                      color: Colors.red,
                      alignment: Alignment.center,
                      child: const Text('Container'),
                    ),
                  );
                },
                onEnd: () {
                  debugPrint('End');
                },
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  _end *= 2;
                  setState(() {});
                },
                child: const Text('Rotate')
              )
            ],
          )
      ),
    ));
  }
}
