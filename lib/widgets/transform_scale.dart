
import 'package:flutter/material.dart';

/*
- filterQuality: child maybe faded, no re-render, change to FilterQuality value (none, low, medium, high)
- filterQuality: null -> re-render
*/

class TransformScaleTest extends StatefulWidget {
  const TransformScaleTest({super.key});

  @override
  State<TransformScaleTest> createState() => _TransformScaleTestState();
}

class _TransformScaleTestState extends State<TransformScaleTest> {
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Transform.scale(
              // filterQuality: FilterQuality.none,
              scale: _isBigger ? 10 : 1,
              // scaleX: _isBigger ? 5 : 1,
              // scaleY: _isBigger ? 15 : 1,
              // origin: const Offset(-20, 2),
              child: Container(
                alignment: Alignment.center,
                color: Colors.amber,
                child: const Text('Scale', style: TextStyle(fontSize: 14),),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _isBigger = !_isBigger;
                });
              },
              child: const Text('Scale')
            )
          ],
        ),
      ),
    );
  }
}