import 'package:flutter/material.dart';
import 'package:flutter_lab/injection/injection.dart';

import 'home.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureEnvironment('test');
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Lab',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Lab'),
    );
  }
}

