import 'package:flutter/material.dart';

class AnimatedPhysicalModeltest extends StatefulWidget {
  const AnimatedPhysicalModeltest({super.key});

  @override
  State<AnimatedPhysicalModeltest> createState() => _AnimatedPhysicalModeltestState();
}

class _AnimatedPhysicalModeltestState extends State<AnimatedPhysicalModeltest> {
  late bool _isAnimate;

  @override
  void initState() {
    super.initState();
    _isAnimate = false;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Center(
        child: Column(
          children: [
          const Spacer(),
            AnimatedPhysicalModel(
              clipBehavior: Clip.hardEdge,
              // borderRadius: const BorderRadius.all(Radius.circular(250)),
              elevation: _isAnimate? 50 : 1,
              color: Colors.amber,
              shadowColor: Colors.pink,
              duration: const Duration(seconds: 2),
              shape: BoxShape.rectangle,
              child: Container(
                width: 250,
                height: 250,
                decoration: const BoxDecoration(
                  color: Colors.blue
                ),
              ),
            ),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                _isAnimate = !_isAnimate;
                setState(() {});
              },
              child: const Text('Animate shadow')
            )
          ],
        ),
      ),
    ));
  }
}