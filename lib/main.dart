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
      home: AlertDialog(),
    );
  }
}

class AlertDialog extends StatefulWidget {
  const AlertDialog({super.key});

  @override
  State<AlertDialog> createState() => _AlertDialogState();
}

class _AlertDialogState extends State<AlertDialog> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('CupertinoAlertDialog  Sample'),
        ),
        child: Center(
          child: CupertinoButton(
              child: const Text('CupertinoAlertDialog'),
              onPressed: () => {_showAlertDialog(context)}),
        ));
  }

  void _showAlertDialog(BuildContext context) {
    showCupertinoModalPopup<void>(
      context: context,
      builder: (context) => CupertinoAlertDialog(
        insetAnimationDuration: const Duration(milliseconds: 1000),
        title: const Text('Alert'),
        content: const Text('Proceed with destructive action?'),
        actions: <CupertinoDialogAction>[
          CupertinoDialogAction(
            isDefaultAction: true,
            onPressed: () => {Navigator.pop(context)},
            child: const Text('No'),
          ),
          CupertinoDialogAction(
            isDestructiveAction: true,
            onPressed: () => {Navigator.pop(context)},
            child: const Text('Yes'),
          ),
        ],
      ),
    );
  }
}
