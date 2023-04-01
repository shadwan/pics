import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Let's see some images"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() => counter += 1);
          },
          child: Icon(Icons.add_a_photo),
        ),
        body: Center(
          child: Text('$counter'),
        ),
      ),
    );
  }
}
