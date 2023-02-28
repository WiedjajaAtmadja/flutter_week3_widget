import 'package:flutter/material.dart';
// import 'question.dart';
// import 'answer.dart';
import 'testWidget.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final _questionAnswers = [
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
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _chooseAnswer() {
    setState(() {
      _questionIndex++;
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
        body: _questionIndex < _questionAnswers.length
            ? TestWidget(
                questionAnswers: _questionAnswers,
                questionIndex: _questionIndex,
                chooseAnswer: _chooseAnswer,
              )
            : const Center(
                child: Text(
                  'My Personality Type is',
                  style: TextStyle(fontSize: 28),
                ),
              ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
