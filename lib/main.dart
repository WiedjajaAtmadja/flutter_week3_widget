import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _questions = [
    'When you go somewhere for the day, would you rather',
    'If you were a teacher, would you rather teach',
    'Are you usually',
    'Do you more often let',
  ];

  var _questionIndex = 0;

  void _chooseAnswer() {
    setState(() {
      if (_questionIndex < _questions.length - 1) {
        _questionIndex++;
      } else {
        _questionIndex = 0;
      }
    });
    debugPrint('questionIndex: $_questionIndex ');
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
          Text(_questions[_questionIndex]),
          ElevatedButton(
              onPressed: _chooseAnswer, child: const Text('Answer 1')),
          ElevatedButton(
              onPressed: _chooseAnswer, child: const Text('Answer 2')),
        ]),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
