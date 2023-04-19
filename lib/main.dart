import 'package:flutter/cupertino.dart';

const List<String> _fruitNames = <String>[
  'Apple',
  'Mango',
  'Banana',
  'Orange',
  'Pineapple',
  'Strawberry',
];
const double _kItemExtent = 32.0;

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
      home: CupertinoPickerApp(),
    );
  }
}

class CupertinoPickerApp extends StatefulWidget {
  const CupertinoPickerApp({super.key});

  @override
  State<CupertinoPickerApp> createState() => _CupertinoPickerAppState();
}

class _CupertinoPickerAppState extends State<CupertinoPickerApp> {
  int _selectedFruitIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
        onPressed: () {
          _showDialog(CupertinoPicker(
            magnification: 1.22,
            squeeze: 1.2,
            useMagnifier: true,
            itemExtent: _kItemExtent,
            children: List<Widget>.generate(_fruitNames.length, (index) {
              return Center(
                child: Text(_fruitNames[index]),
              );
            }),
            onSelectedItemChanged: (int idx) {
              setState(() {
                _selectedFruitIdx = idx;
              });
            },
          ));
        },
        child: Text(_fruitNames[_selectedFruitIdx]),
      ),
    );
  }

  void _showDialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext context) => Container(
              height: 216,
              padding: const EdgeInsets.only(top: 6.0),
              // The Bottom margin is provided to align the popup above the system navigation bar.
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              // Provide a background color for the popup.
              color: CupertinoColors.systemBackground.resolveFrom(context),
              // Use a SafeArea widget to avoid system overlaps.
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }
}
