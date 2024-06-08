import 'animal.dart';
import 'living_things.dart';
import 'bark.dart';

class Dog extends Animal with Bark {
  Dog(super.name);

  void protectHomeFrom(LivingThings livingThings) {
    print("Dog is attacking ${livingThings.name}");
    print("${livingThings.name} ran away");
  }

  void getBallAndReturnToMaster() {
    print("Going for the ball");
  }
}
