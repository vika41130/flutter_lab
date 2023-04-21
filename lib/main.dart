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
      home: SliverNavBarExample(),
    );
  }
}

class SliverNavBarExample extends StatefulWidget {
  const SliverNavBarExample({super.key});

  @override
  State<SliverNavBarExample> createState() => _SliverNavBarExampleState();
}

class _SliverNavBarExampleState extends State<SliverNavBarExample> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          const CupertinoSliverNavigationBar(
            leading: Icon(CupertinoIcons.person_2),
            trailing: Icon(CupertinoIcons.add_circled),
            largeTitle: Text('Contacts'),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                const Text(
                  'Drag me up',
                  textAlign: TextAlign.center,
                ),
                CupertinoButton.filled(
                  child: const Text('Go to Next Page'),
                  onPressed: () {
                    Navigator.push(context, CupertinoPageRoute<Widget>(
                      builder: (context) {
                        return const NextPage();
                      },
                    ));
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  const NextPage({super.key});

  @override
  Widget build(BuildContext context) {
    final Brightness brightness = CupertinoTheme.brightnessOf(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: <Widget>[
          CupertinoSliverNavigationBar(
            backgroundColor: CupertinoColors.systemYellow,
            border: Border(
              bottom: BorderSide(
                color: brightness == Brightness.light
                    ? CupertinoColors.black
                    : CupertinoColors.white,
              ),
            ),
            // The middle widget is visible in both collapsed and expanded states.
            middle: const Text('Contacts Group'),
            // When the "middle" parameter is implemented, the larget title is only visible
            // when the CupertinoSliverNavigationBar is fully expanded.
            largeTitle: const Text('Family'),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const <Widget>[
                Text('Drag me up', textAlign: TextAlign.center),
                // When the "leading" parameter is omitted on a route that has a previous page,
                // the back button is automatically added to the leading position.
                Text('Tap on the leading button to navigate back',
                    textAlign: TextAlign.center),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
