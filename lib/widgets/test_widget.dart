import 'package:flutter/material.dart';
import 'package:flutter_lab/injection/injection.dart';
import 'package:flutter_lab/services/services_index.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          onPressed: () async {
            getIt<Service>().log();
          },
          child: const Text('Call Service')
        ),
      ],
    );
  }
}
