//import 'package:basics/styled_title_text.dart';
import 'package:basics/dice_roller.dart';
import 'package:flutter/material.dart';

// Creating variables for Alignment
//Alignment? startAlignment = Alignment.topLeft;

// use final because we are not reasigned again, in dynamic time
//final startAlignment = Alignment.topLeft;

// const canot reasign but provide extra information to dart. for example compile time

const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

//var startAlignment = Alignment.topLeft;
//var endAlignment = Alignment.bottomRight;

// stateless with we do not have values that can ghange and we do not want to show when change
class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  //final List<Color> colors;

  // We need to add the construct because StatelessWidget needs a key
  //GradientContainer({key}) : super(key: key);
  const GradientContainer(this.color1, this.color2, {super.key});
  // const GradientContainer({super.key, required this.colors});

  const GradientContainer.purple({super.key})
      : color1 = Colors.deepPurple,
        color2 = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    //startAlignment = Alignment.topLeft;
    return Container(
      //child: Center(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          // colors: colors,
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: const Center(
        //child: StyleTitleText('Hello Word'),
        child: DiceRoller(),
      ),
    );
  }

  // class GradientContainer extends StatelessWidget {
  // // final Color color1;
  // // final Color color2;
  // final List<Color> colors;

  // // We need to add the construct because StatelessWidget needs a key
  // //GradientContainer({key}) : super(key: key);
  // //const GradientContainer(this.color1, this.color2, {super.key});
  // const GradientContainer({super.key, required this.colors});

  // @override
  // Widget build(BuildContext context) {
  //   //startAlignment = Alignment.topLeft;
  //   return Container(
  //     //child: Center(
  //     decoration: BoxDecoration(
  //       gradient: LinearGradient(
  //         // colors: [
  //         //   color1,
  //         //   color2,
  //         // ],
  //         colors: colors,
  //         begin: startAlignment,
  //         end: endAlignment,
  //       ),
  //     ),
  //     child: const Center(
  //       child: StyleTitleText('Hello Word'),
  //     ),
  //   );
  // }
}
