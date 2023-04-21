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
      home: TabScaffoldExample(),
    );
  }
}

class TabScaffoldExample extends StatefulWidget {
  const TabScaffoldExample({super.key});

  @override
  State<TabScaffoldExample> createState() => _TabScaffoldExampleState();
}

class _TabScaffoldExampleState extends State<TabScaffoldExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search_circle_fill), label: 'Explore'),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(
          builder: (context) {
            return CupertinoPageScaffold(
              navigationBar: CupertinoNavigationBar(
                middle: Text('Page 1 of tab $index'),
              ),
              child: Center(
                child: CupertinoButton(
                  child: const Text('Next Page'),
                  onPressed: () {
                    Navigator.of(context).push(CupertinoPageRoute<void>(
                      builder: (context) {
                        return CupertinoPageScaffold(
                          navigationBar: CupertinoNavigationBar(
                            middle: Text('Page 2 of tab $index'),
                          ),
                          child: Center(
                            child: CupertinoButton(
                              child: const Text('Back'),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                        );
                      },
                    ));
                  },
                ),
              ),
            );
          },
        );
      },
    );
  }
}
