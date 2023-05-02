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
            getIt<Service>(instanceName: 'serviceIpl').log();
          },
          child: const Text('serviceIpl')
        ),
        const SizedBox(width: 50,),
        ElevatedButton(
          onPressed: () async {
            getIt<Service>(instanceName: 'serviceIpl2').log();
          },
          child: const Text('serviceIpl2')
        ),
      ],
    );
  }
}
