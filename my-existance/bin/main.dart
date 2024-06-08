//Abstraction, Encapsulation, Inheritance, Polymorphism
//Interface vs Mixin vs Abstract
import 'living_things.dart';
import 'animal.dart';
import 'plant.dart';
import 'particles.dart';
import 'ecosystem.dart';
import 'human.dart';
import 'dog.dart';

void main() async {
  final dog = Dog("Tommy");
  dog.getBallAndReturnToMaster();
  final ravan = Human("Raven", specialization: "Bad");
  dog.bark();
  dog.bark();
  dog.protectHomeFrom(ravan);
}

void mainA(List<String> arguments) async {
  final tommy = Animal("Tommy");
  final sunflower = Plant("sunflower");
  final fruits = sunflower.giveFruits();

  final ecosystem = Ecosystem.start([tommy, sunflower]);

  final ram = Human("Ram", specialization: "Doctor");
  ecosystem.addLivingThings(ram);
  // print(object)

  await Future.delayed(Duration(seconds: 2));
}
