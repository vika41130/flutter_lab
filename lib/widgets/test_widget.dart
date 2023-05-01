import 'package:flutter/material.dart';
import 'package:flutter_lab/injection/injection.dart';
import 'package:flutter_lab/services/services_index.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        getIt<UserService>();
      },
      child: const Text('Test Inject')
    );
  }
}