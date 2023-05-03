import 'package:flutter/material.dart';
import 'package:flutter_lab/stream/injectable_scope_change.dart';
import 'package:flutter_lab/widgets/widgets_index.dart';

import 'injection/injection.dart';

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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StreamBuilder<Object>(
            stream: getIt<InjectableScopeChangeStream>().stream,
            builder: (context, snapshot) {
              return Text('Current Scope Name: ${getIt.currentScopeName}');
            }
          ),
          const Spacer(),
          const TestWidget(),
          const Spacer(),
        ],
      ),
    );
  }
}
