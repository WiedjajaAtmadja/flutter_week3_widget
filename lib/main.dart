import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _question_answers = [
    {
      'question': 'What\'s your favorite color?',
      'answers': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'question': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion'],
    },
    {
      'question': 'When you go somewhere for the day, would you rather',
      'answers': ['Plan what you will do and when', 'Just go!'],
    },
    {
      'question': 'If you were a teacher, would you rather teach',
      'answers': ['Math', 'Science', 'History', 'English'],
    },
    {
      'question': 'Are you usually',
      'answers': ['A morning person', 'An evening person'],
    },
    {
      'question': 'Do you more often let',
      'answers': ['Your heart lead you', 'Your head lead you'],
    }
  ];

  var _questionIndex = 0;

  void _chooseAnswer() {
    setState(() {
      if (_questionIndex < _question_answers.length - 1) {
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
      title: "My First App From Scratch",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('My First App From Scratch')),
        body: Column(children: [
          // Text(_questions[_questionIndex]),
          Question(_question_answers[_questionIndex]['question'] as String),
          // ElevatedButton(
          //     onPressed: _chooseAnswer, child: const Text('Answer 1')),
          // ElevatedButton(
          //     onPressed: _chooseAnswer, child: const Text('Answer 2')),
          Answer(_chooseAnswer, 'Answer 1'),
          Answer(_chooseAnswer, 'Answer 2'),
        ]),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
