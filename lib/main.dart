import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  
  void answerQuestion(){
    print('Answer chosen');
  }

  @override
  Widget build(BuildContext context) {
  var questions = [
    "What\'s your favourite color?",
    "What\'s your favourite aniamrl?",
  ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('First App'),
        ),
        body: Column(
          children: [
            Text('This is question'),
            RaisedButton(
              onPressed: answerQuestion,
              child: Text('Answer 1'),
            ),
            RaisedButton(
              onPressed: ()=>print('Answer two chosen with INLINE FUNCTION'),
              child: Text('Answer 2'),
            ),
            RaisedButton(
              onPressed: (){
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
