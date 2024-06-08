import 'dart:async';
import 'dart:math';

import 'animal.dart';

class Aradhya implements Animal {
  late Timer _timer = Timer.periodic(Duration(seconds: 1), (_) {
    _iAmOnMood = Random().nextInt(5) == 2;
  });

  bool _iAmOnMood = false;
  int _currentPosition = -50;

  int get movementSpeed {
    if (_iAmOnMood) {
      return 100;
    } else {
      return 0;
    }
  }

  @override
  void walk() {
    final movementSpeed = this.movementSpeed;
    if (movementSpeed == 0) {
      print("I am not in a mood to move");
      print(
          "'Even the world burns, i am not going to move, because i gotta sleep' - A2");
    } else {
      print(
          "My name is Aaradhya gopal Nepal and i am the fastest man alive...");
      print("I am moving the speed of $movementSpeed");
    }

    _currentPosition += movementSpeed;
  }

  @override
  void whereIAm() {
    if (Random().nextInt(3) == 2) {
      print("I want some me time, please do not ask where i am.");
    } else {
      return print("I am at $_currentPosition");
    }
  }

  void dispose() {
    _timer.cancel();
  }
}
