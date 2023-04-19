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
      home: DatePickerExample(),
    );
  }
}

class DatePickerExample extends StatefulWidget {
  const DatePickerExample({super.key});

  @override
  State<DatePickerExample> createState() => _DatePickerExampleState();
}

class _DatePickerExampleState extends State<DatePickerExample> {
  DateTime date = DateTime(2016, 10, 26);
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: const CupertinoNavigationBar(
        middle: Text('CupertinoDatePicker Sample'),
      ),
      child: Center(
        child: SizedBox(
          height: 300,
          child: CupertinoDatePicker(
            // use24hFormat: true,
            mode: CupertinoDatePickerMode.dateAndTime,
            // minuteInterval: 1,
            backgroundColor: CupertinoColors.systemGrey6,
            onDateTimeChanged: (DateTime value) {
              // setState(() {
              //   date = value;
              // });
            },
          ),
        ),
      ),
    );
  }
}
