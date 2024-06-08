import 'dart:async';
import 'particles.dart';

abstract class LivingThings<I extends Particles, R extends Particles> {
  late final Timer _heartBeat;

  bool _isAlive;

  bool get isAlive => _isAlive;

  Timer? _outOfBreath;

  final String name;
  int age = 0;
  final _dhukDhukDuration = 1000;

  LivingThings(this.name) : _isAlive = true {
    print("$name is born");
    setOutOfBreath();
    _heartBeat = Timer.periodic(Duration(milliseconds: _dhukDhukDuration), (_) {
      age += 1;
      print("$name heart:");
      print("Dhuk Dhuk");
      if (age == 20) {
        print("$name became very old. Now its time to go to heaven");
        die();
      }
    });
  }

  void setOutOfBreath() {
    _outOfBreath = Timer(Duration(seconds: 2), () {
      print("$name is out of breath");
      die();
    });
  }

  R breathe(I input);

  LivingThings reproduce(LivingThings yourPartner, String name);

  void kill(LivingThings another) {
    print("${this.name} is trying to kill ${another.name}");
    another.die();
  }

  void die() {
    _outOfBreath?.cancel();
    _isAlive = false;
    _heartBeat.cancel();
    print("$name dead");
  }
}
