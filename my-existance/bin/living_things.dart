import 'dart:async';

abstract class LivingThings {
  late final Timer _heartBeat;

  final String name;
  int age = 0;
  final _dhukDhukDuration = 1000;

  LivingThings(this.name) {
    print("$name is born");
    _heartBeat = Timer.periodic(Duration(milliseconds: _dhukDhukDuration), (_) {
      age += 1;
      print("$name heart:");
      print("Dhuk Dhuk");
      if (age == 20) {
        die();
      }
    });
  }

  void breathe();

  LivingThings reproduce(LivingThings yourPartner, String name);

  void kill(LivingThings another) {
    another.die();
  }

  void die() {
    _heartBeat.cancel();
    print("$name dead");
  }
}
