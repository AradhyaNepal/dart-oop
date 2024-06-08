//Abstraction, Encapsulation, Inheritance, Polymorphism
//Interface and Mixin
import 'living_things.dart';
import 'animal.dart';
import 'plant.dart';
import 'particles.dart';
import 'ecosystem.dart';

void main(List<String> arguments) async {
  final tommy = Animal("Tommy");
  final sunflower = Plant("sunflower");
  final fruits = sunflower.giveFruits();

  final ecosystem = Ecosystem([tommy, sunflower]);

  await Future.delayed(Duration(seconds: 2));
}
