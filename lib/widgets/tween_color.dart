import 'package:flutter/material.dart';

class TweenColorTest extends StatefulWidget {
  const TweenColorTest({super.key});

  @override
  State<TweenColorTest> createState() => _TweenColorTestState();
}

class _TweenColorTestState extends State<TweenColorTest> {
  Color _end = Colors.red;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Column(
            children: [
              const Spacer(),
              TweenAnimationBuilder(
                tween: ColorTween(begin: Colors.blue, end: _end),
                duration: const Duration(seconds: 5),
                builder: (_, color, child) {
                  return ColorFiltered(
                    colorFilter: ColorFilter.mode(color!, BlendMode.modulate),
                    child: Container(
                      width: 200, height: 200,
                      alignment: Alignment.center,
                      color: color,
                      child: const Text('Container'),
                    ),
                  );
                },
                // child: Container(
                //   width: 100, height: 100,
                //   alignment: Alignment.center,
                //   child: const Text('Container'),
                // ),
                onEnd: () {
                  debugPrint('End');
                },
              ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  _end = Colors.black;
                  setState(() {});
                },
                child: const Text('Change Colorr')
              )
            ],
          )
      ),
    ));
  }
}
