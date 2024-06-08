//Abstraction, Encapsulation, Inheritance, Polymorphism
//Interface and Mixin
import 'living_things.dart';
import 'animal.dart';
import 'plant.dart';
import 'particles.dart';

void main(List<String> arguments) async {
  final tommy = Animal("Tommy");
  final sunflower = Plant("sunflower");

  Oxygen oxygen = Oxygen();
  CarbonDioxide carbonDioxide = CarbonDioxide();
  Future.delayed(Duration(seconds: 5), () {
    sunflower.kill(tommy);
  });
  while (true) {
    if (!sunflower.isAlive && !tommy.isAlive) {
      break;
    }
    if (sunflower.isAlive) {
      oxygen = sunflower.breathe(carbonDioxide);
    }
    if (tommy.isAlive) {
      carbonDioxide = tommy.breathe(oxygen);
    }

    print(
        "Oxygen ${oxygen.hashCode} and carbondioxide ${carbonDioxide.hashCode} cycle is running");
    await Future.delayed(Duration(seconds: 2));
  }
}
