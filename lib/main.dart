import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('My First App From Scratch')),
        body: const Center(child: Text('Hello World!')),
        // body: Container(
        //   color: Colors.green,
        //   child: const Center(
        //     child: Text(
        //       'Hello World!',
        //       style: TextStyle(
        //         color: Colors.white,
        //         fontSize: 30,
        //         fontWeight: FontWeight.bold,
        //       ),
        //     ),
        //   ),
        // )
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
