import 'package:flutter/material.dart';

class AnimatedPositionTest extends StatefulWidget {
  const AnimatedPositionTest({super.key});

  @override
  State<AnimatedPositionTest> createState() => _AnimatedPositionTestState();
}

class _AnimatedPositionTestState extends State<AnimatedPositionTest> {
  late bool _isLeft;
  late bool _isTop;
  @override
  void initState() {
    super.initState();
    _isLeft = false;
    _isTop = false;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(seconds: 3),
              left: _isLeft ? 0 : 200,
              right: _isLeft ? 200 : 0,
              top: _isTop ? 0 : 200,
              bottom: _isTop ? 0 : 200,
              onEnd: () {
                debugPrint('End');
              },
              child: Container(
                width: 50,
                height: 50,
                color: Colors.amber,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      _isLeft = true;
                      setState(() {});
                    },
                    child: const Text('Left')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _isLeft = false;
                      setState(() {});
                    },
                    child: const Text('Right')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _isTop = true;
                      setState(() {});
                    },
                    child: const Text('Top')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _isTop = false;
                      setState(() {});
                    },
                    child: const Text('Bottom')
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}