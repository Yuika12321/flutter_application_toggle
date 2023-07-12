import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  var isVisible = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            MaterialButton(
              onPressed: () {
                isVisible = !isVisible;
                setState(() {});
              },
              color: Colors.blueAccent,
              textColor: Colors.black,
              child: const Text('Toggle'),
            ),
            Visibility(
              visible: isVisible,
              child: Container(
                color: Colors.green,
                width: 300,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
