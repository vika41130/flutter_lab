
import 'package:flutter/material.dart';
import 'package:flutter/physics.dart';

class Logo extends StatefulWidget {
  const Logo({super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> with SingleTickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
      reverseDuration: const Duration(seconds: 1),
      value: 40,
      lowerBound: 0.0,
      upperBound: 80.0,
      animationBehavior: AnimationBehavior.preserve,
    );
    controller.addListener(() {
      // debugPrint(controller.value.toString());
      setState(() {});
    });
    controller.addStatusListener((AnimationStatus status) {
      debugPrint(status.toString());
      // debugPrint(controller.velocity.toString());
    });
    // debugPrint(controller.view.toString());
  }
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10),
              height: controller.value * 5,
              width: controller.value * 5,
              child: const FlutterLogo()
            ),
            const Spacer(),
            SizedBox(
              height: 300,
              child: GridView(
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  mainAxisSpacing: 16,
                  crossAxisSpacing: 16,
                ),
                children: [
                  ElevatedButton(
                    onPressed: () {
                      controller.dispose();
                    },
                    child: const Text('Dispose')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.animateWith(SpringSimulation(
                        const SpringDescription(mass: 5, stiffness: 3, damping: 8),
                        0, 80, 1.0, tolerance: Tolerance.defaultTolerance,
                      ));
                    },
                    child: const Text('Animate with')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.fling(
                        velocity: 10,
                        springDescription: const SpringDescription(mass: 5, stiffness: 3, damping: 8),
                        animationBehavior: AnimationBehavior.preserve,
                      );
                    },
                    child: const Text('Fling')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.repeat(min: 10, max: 65, period: const Duration(seconds: 5), reverse: false);
                    },
                    child: const Text('Repeat Forward')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.repeat(min: 10, max: 65, period: const Duration(seconds: 5), reverse: true);
                    },
                    child: const Text('Repeat Reverse')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.animateTo(40, duration: const Duration(seconds: 10),);
                    },
                    child: const Text('Animate to')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.animateBack(50, duration: const Duration(seconds: 10),);
                    },
                    child: const Text('Animate back')
                  ),
                  ElevatedButton(
                    onPressed: () {controller.value = 10;},
                    child: const Text('Set Animation')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.forward();
                      debugPrint(controller.isAnimating.toString());
                    },
                    child: const Text('Show Animation')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.reverse();
                      debugPrint(controller.isAnimating.toString());
                    },
                    child: const Text('Hide Animation')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.stop();
                      debugPrint(controller.isAnimating.toString());
                    },
                    child: const Text('Stop Animation')
                  ),
                  ElevatedButton(
                    onPressed: () {
                      controller.reset();
                      debugPrint(controller.isAnimating.toString());
                    },
                    child: const Text('Reset Animation')
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}