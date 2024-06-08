import 'animal.dart';
import 'living_things.dart';

class Dog extends Animal {
  Dog(super.name);

  void protectHomeFrom(LivingThings livingThings) {
    print("Dog is attacking ${livingThings.name}");
    print("${livingThings.name} ran away");
  }

  void getBallAndReturnToMaster() {
    print("Going for the ball");
  }

  void bark() {
    print("Vow! Vow!");
  }
}
