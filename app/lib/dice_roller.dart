import 'dart:math';

import 'package:flutter/material.dart';

import 'body_text.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  int diceNumber = 1;

  @override
  Widget build(BuildContext context) {
    diceNumber = randomDiceNumber();

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        const BodyText(),
        Image.asset(
          "assets/images/dice-$diceNumber.png",
          width: 200,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: onRollDiceClick,
          style: TextButton.styleFrom(
            padding: const EdgeInsets.only(left: 16, right: 16),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontWeight: FontWeight.bold),
          ),
          child: const Text('Roll Dice'),
        ),
      ],
    );
  }

  int randomDiceNumber() {
    return randomizer.nextInt(6) + 1;
  }

  void onRollDiceClick() {
    diceNumber = randomDiceNumber();

    // ignore: avoid_print
    print("You clicked the button. Dice number is now: $diceNumber");

    setState(() {
      diceNumber;
    });
  }
}
