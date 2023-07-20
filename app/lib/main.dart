import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(getTitle()),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 94, 185, 245),
                Color.fromARGB(255, 235, 242, 249)
              ],
            ),
          ),
          child: const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to Groovy POS',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textScaleFactor: 1.4,
                ),
                Text('It\'s time to process payments!'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String getTitle() {
    return 'Groovy POS';
  }
}
