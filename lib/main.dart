import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(brightness: Brightness.light),
      home: CupertinoButtonExample(),
    );
  }
}

class CupertinoButtonExample extends StatefulWidget {
  const CupertinoButtonExample({super.key});

  @override
  State<CupertinoButtonExample> createState() => _CupertinoButtonExampleState();
}

class _CupertinoButtonExampleState extends State<CupertinoButtonExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('CupertinoButton  Sample'),
        ),
        child: Center(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const <Widget>[
            CupertinoButton(
              onPressed: null,
              child: Text('Disabled'),
            ),
            SizedBox(
              height: 30,
            ),
            CupertinoButton.filled(
              onPressed: null,
              child: Text('Disabled'),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        )));
  }
}
