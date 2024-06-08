import 'human.dart';
import 'living_things.dart';
import 'particles.dart';
class Aradhya implements Human{
  @override
  int age=22;

  @override
  CarbonDioxide breathe(Oxygen oxygen) {
   print("I don't need to breath. I am god myself");
   return CarbonDioxide();
  }

  @override
  void die() {
    print("I will never die. I am god.");
  }

  @override
  bool get isAlive => true;

  @override
  void kill(LivingThings<Particles, Particles> another) {
    another.kill(another);
  }


  @override
  String get name => "Aradhya";

  @override
  LivingThings<Particles, Particles> reproduce(LivingThings<Particles, Particles> yourPartner, String name) {
    return yourPartner.reproduce(this, name);
  }

  @override
  String get specialization => "Cody guy";
}