// import to have the runApp() function
import 'package:flutter/material.dart';
import 'package:basics/gradient_container.dart';

// we need to have the main where the program will start
void main() {
  // runApp() functions should be in everyapp and is where start (Up and running)
  // runApp() needs a Widget as argument
  // passing MaterialApp() we are creating a widget
  // using named arguments we need to pass argument to home argument the main argument
  // const allows the dart to store this in memory and reuse it, and run the application in a more efcient way
  // Scaffold widget help us to have a better view (styling). Its needs the body argument
  // Center widget needs
  runApp(
    //const MaterialApp(
    const MaterialApp(
      home: Scaffold(
        // adding background color
        // backgroundColor: null,
        //backgroundColor: Color.fromARGB(255, 63, 5, 120),
        // to have a gradient coller we need to add a new widget in a container to help configuring styling and layouting
        body: GradientContainer(
          Color.fromARGB(255, 26, 2, 80),
          Color.fromARGB(255, 45, 7, 98),
        ),
        // body: GradientContainer(
        //   colors: [
        //     Color.fromARGB(255, 26, 2, 80),
        //     Color.fromARGB(255, 45, 7, 98),
        //   ],
        // ),
      ),
    ),
  );
}
