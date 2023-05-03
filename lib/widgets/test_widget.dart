import 'package:flutter/material.dart';
import 'package:flutter_lab/injection/injection.dart';
import 'package:flutter_lab/widgets/widgets_index.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                initSoutheastAsiaScope();
                getIt<SoutheastAsiaWidget>().log();
              },
              child: const Text('Push SoutheastAsia Scope')
            ),
            const SizedBox(width: 10,),
            ElevatedButton(
              onPressed: () async {
                getIt.popScope();
              },
              child: const Text('Pop SoutheastAsia Scope')
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                initEastAsiaScope();
                getIt<EastAsiaWidget>().log();
              },
              child: const Text('Push EastAsia Scope')
            ),
            const SizedBox(width: 10,),
            ElevatedButton(
              onPressed: () async {
                getIt.popScope();
              },
              child: const Text('Pop EastAsia Scope')
            ),
          ],
        ),
      ],
    );
  }
}
