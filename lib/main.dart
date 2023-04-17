import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
      home: CupertinoContextMenuExample(),
    );
  }
}

class CupertinoContextMenuExample extends StatefulWidget {
  const CupertinoContextMenuExample({super.key});

  @override
  State<CupertinoContextMenuExample> createState() =>
      _CupertinoContextMenuExampleState();
}

class _CupertinoContextMenuExampleState
    extends State<CupertinoContextMenuExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('CupertinoContextMenu  Sample'),
        ),
        child: Center(
          child: SizedBox(
            height: 100,
            width: 100,
            child: CupertinoContextMenu(
                actions: <Widget>[
                  CupertinoContextMenuAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    isDefaultAction: true,
                    trailingIcon: CupertinoIcons.doc_on_clipboard_fill,
                    child: const Text('Copy'),
                  ),
                  CupertinoContextMenuAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    trailingIcon: CupertinoIcons.share,
                    child: const Text('Share'),
                  ),
                  CupertinoContextMenuAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    trailingIcon: CupertinoIcons.heart,
                    child: const Text('Favorite'),
                  ),
                  CupertinoContextMenuAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    isDestructiveAction: true,
                    trailingIcon: CupertinoIcons.delete,
                    child: const Text('Delete'),
                  ),
                ],
                child: Container(
                  color: CupertinoColors.systemYellow,
                  child: const FlutterLogo(
                    size: 500,
                  ),
                )),
          ),
        ));
  }
}
