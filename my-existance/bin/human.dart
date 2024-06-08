import 'animal.dart';
import 'living_things.dart';
import 'particles.dart';

class Human extends Animal {
  final String specialization;

  Human(
    super.name, {
    required this.specialization,
  });

  @override
  void kill(LivingThings another) {
    if (specialization == "Cody Guy") {
      print("You are too nerd to kill someone. Next Life.");
    } else {
      super.kill(another);
    }
  }
}
