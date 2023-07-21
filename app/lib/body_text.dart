import 'package:flutter/material.dart';

class BodyText extends StatelessWidget {
  const BodyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
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
    );
  }
}
