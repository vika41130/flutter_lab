
import 'package:flutter/material.dart';

class AnimatedCrossFadeTest extends StatefulWidget {
  const AnimatedCrossFadeTest({super.key});

  @override
  State<AnimatedCrossFadeTest> createState() => _AnimatedCrossFadeTestState();
}

class _AnimatedCrossFadeTestState extends State<AnimatedCrossFadeTest> {
  late bool _showFirst;
  @override
  void initState() {
    super.initState();
    _showFirst = true;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Column(
          children: [
            const Spacer(),
            AnimatedCrossFade(
              firstChild: Container(width: 100, height: 100, color: Colors.black,),
              secondChild: Container(width: 200, height: 200, color: Colors.red,),
              crossFadeState: _showFirst ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: const Duration(seconds: 5),
              reverseDuration: const Duration(seconds: 2),
              firstCurve: Curves.bounceIn,
              secondCurve: Curves.bounceOut,
              sizeCurve: Curves.bounceInOut,
              excludeBottomFocus: false,
              layoutBuilder: (topChild, topChildKey, bottomChild, bottomChildKey) {
                return Column(
                  children: [
                    Container(
                      key: topChildKey,
                      child: topChild,
                    ),
                    Container(
                      key: bottomChildKey,
                      child: bottomChild
                    ),
                  ],
                );
              },
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                _showFirst =! _showFirst;
                setState(() {});
              },
              child: const Text('Toggle')
            )
          ],
        ),
      ),
    ));
  }
}