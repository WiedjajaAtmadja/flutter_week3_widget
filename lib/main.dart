import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  final questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?'
  ];
  var questionIndex = 0;
  MainApp({super.key});

  void chooseAnswer() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('My First App From Scratch')),
        body: Column(children: [
          const Text('The question'),
          ElevatedButton(
              onPressed: chooseAnswer, child: const Text('Answer 1')),
          ElevatedButton(
              onPressed: chooseAnswer, child: const Text('Answer 2')),
        ]),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
