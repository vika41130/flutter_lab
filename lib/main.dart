import 'package:flutter/cupertino.dart';

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
      home: CupertinoTextFieldExample(),
    );
  }
}

class CupertinoTextFieldExample extends StatefulWidget {
  const CupertinoTextFieldExample({super.key});

  @override
  State<CupertinoTextFieldExample> createState() =>
      _CupertinoTextFieldExampleState();
}

class _CupertinoTextFieldExampleState extends State<CupertinoTextFieldExample> {
  late TextEditingController _textController;
  @override
  void initState() {
    super.initState();
    _textController = TextEditingController(text: 'initial text');
  }

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoTextField Sample'),
      ),
      child: Center(
        child: CupertinoTextField(
          controller: _textController,
          placeholder: 'Enter name',
          prefix: const Text(
            'Name',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          decoration: const BoxDecoration(),
          suffix: CupertinoButton(
            child: const Icon(CupertinoIcons.delete),
            onPressed: () {
              _textController.clear();
            },
          ),
        ),
      ),
    );
  }
}
