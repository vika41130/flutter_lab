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
      home: CupertinoScrollBar(),
    );
  }
}

class CupertinoScrollBar extends StatefulWidget {
  const CupertinoScrollBar({super.key});

  @override
  State<CupertinoScrollBar> createState() => _CupertinoScrollBarState();
}

class _CupertinoScrollBarState extends State<CupertinoScrollBar> {
  final ScrollController _controllerOne = ScrollController();
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoScrollbar Sample'),
      ),
      child: Center(
        child: CupertinoScrollbar(
          thickness: 6.0,
          thicknessWhileDragging: 10.0,
          radius: const Radius.circular(34.0),
          radiusWhileDragging: Radius.zero,
          thumbVisibility: true,
          controller: _controllerOne,
          child: ListView.builder(
            itemCount: 120,
            itemBuilder: (context, index) {
              return Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Item $index'),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
