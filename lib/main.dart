import 'package:flutter/material.dart';
import 'package:flutter_lab/models/models_index.dart';

import 'get_it_set_up.dart';

void main() {
  setUpGetIt();
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
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: IconButton(
                onPressed: () {
                  getIt<CountStream>().decreaseCount();
                },
                icon: const Icon(Icons.remove)
              ),
            ),
            StreamBuilder(
              stream: getIt<CountStream>().counterStream,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Text('${getIt<CountStream>().count}', style: const TextStyle(fontSize: 40),);
                }
                return const CircularProgressIndicator();
              }
            ),
            Expanded(
              child: IconButton(
                onPressed: () {
                  getIt<CountStream>().increaseCount();
                },
                icon: const Icon(Icons.add)
              ),
            )
          ],
        ),
      ),
    );
  }
}
