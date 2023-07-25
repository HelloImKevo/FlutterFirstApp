import 'package:flutter/material.dart';

import 'gradient_container.dart';

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
        body: const GradientContainer(
          Color.fromARGB(255, 94, 185, 245),
          Color.fromARGB(255, 235, 242, 249),
        ),
      ),
    );
  }

  String getTitle() {
    return 'Groovy POS';
  }
}
