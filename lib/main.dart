import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App Bar Text"),
        ),
        body: Column(
          children: [
            Text("Question text here."),
            ElevatedButton(
              onPressed: null,
              child: Text("Option 1"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Option 2"),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text("Option 3"),
            ),
            RaisedButton(
              onPressed: null,
              child: Text("Option 4"),
            )
          ],
        ),
      ),
    );
  }
}
