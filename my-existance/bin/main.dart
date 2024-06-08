//Abstraction, Encapsulation, Inheritance, Polymorphism
//Interface vs Mixin vs Abstract
import 'living_things.dart';
import 'animal.dart';
import 'plant.dart';
import 'particles.dart';
import 'ecosystem.dart';
import 'human.dart';
import 'dog.dart';
import 'aradhya.dart';
import 'bark.dart';

void main() async {
  final hari = Human("Hari", specialization: "Amazing Guy");
  final aradhya = Aradhya();
  final dog = Dog("Tommy");
  dog.kill(aradhya);
  dog.bark();
  aradhya.kill(hari);
  List<LivingThings> livingThings = [aradhya, hari, dog];
  final ecoSystem = Ecosystem.start([aradhya, hari]);

  Future.delayed(Duration(seconds: 10),(){
    print("Is Aradhya alive without oxygen for lots of duration ${aradhya.isAlive}");
  });
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
