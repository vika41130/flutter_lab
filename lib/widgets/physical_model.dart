import 'package:flutter/material.dart';

class PhysicalModelTest extends StatefulWidget {
  const PhysicalModelTest({super.key});

  @override
  State<PhysicalModelTest> createState() => _PhysicalModelTestState();
}

class _PhysicalModelTestState extends State<PhysicalModelTest> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body: Center(
        child: PhysicalModel(
          // shape: BoxShape.rectangle,
          clipBehavior: Clip.hardEdge,
          borderRadius: const BorderRadius.all(Radius.circular(250)),
          elevation: 10,
          color: Colors.amber,
          shadowColor: Colors.red,
          child: Container(
            width: 250,
            height: 250,
            decoration: const BoxDecoration(
              color: Colors.blue
            ),
          ),
        ),
      ),
    ));
  }
}
