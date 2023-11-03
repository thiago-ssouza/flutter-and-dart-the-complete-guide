import 'package:flutter/material.dart';
import 'dart:math';

// for only create once and avoid to recreate a object Radom
final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

// the _ is to make the class private
class _DiceRollerState extends State<DiceRoller> {
  //var activeDiceImage = 'assets/images/dice-2.png';

  // to have the current DiceRoll
  var currentDiceRoll = 2;

  void rollDice() {
    //var diceRoll = Random().nextInt(6) + 1;

    // to force to run the method build again to be able to change the image
    setState(() {
      //currantDiceRoll = Random().nextInt(6) + 1;
      currentDiceRoll = randomizer.nextInt(6) + 1;
      //activeDiceImage = 'assets/images/dice-4.png';
      //activeDiceImage = 'assets/images/dice-$diceRoll.png';
      //print('Changing image...');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          // 'assets/images/dice-2.png',
          // activeDiceImage,
          'assets/images/dice-$currentDiceRoll.png',
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.only(
            //   top: 20,
            // ),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(
              fontSize: 28,
            ),
          ),
          child: const Text('Roll Dice'),
        )
        // anonimous function
        //TextButton(onPressed: () {}, child: const Text('Roll Dice'))
      ],
    );
  }
}
