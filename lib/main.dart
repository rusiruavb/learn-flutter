import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First Title'),
        ),
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Text('The Question'),
            RaisedButton(
              child: Text('Answer 1'),
              onPressed: answerQuestions,
            ),
            RaisedButton(
              child: Text('Answer 2'),
              onPressed: () {
                print('Anonymous button is clicked');
              },
            ),
            RaisedButton(
              child: Text('Answer 3'),
              onPressed: () => print('Arrow function button clicked'),
            )
          ],
        ),
      ),
    );
  }

  void answerQuestions() {
    print('Answer button clicked');
  }
}
