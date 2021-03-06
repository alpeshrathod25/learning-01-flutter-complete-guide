import 'package:flutter/material.dart';
import './question.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  var questions = [
      "What\'s your favourite color?",
      "What\'s your favourite animal?",
    ];
  var _questionIndex = 0;

  void answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: Column(
          children: [
            Question(questions[
                _questionIndex]), //question.elementAt(0) is an alternative
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: () => print('Answer two chosen with INLINE FUNCTION'),
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: () {
                print('Answer three chosen with ANONYMOUS FUNCTION');
              },
              child: Text('Answer 3'),
            ),
          ],
        ),
      ),
    );
  }
}
