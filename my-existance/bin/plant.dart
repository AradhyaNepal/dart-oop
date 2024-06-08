import 'living_things.dart';
import 'particles.dart';

class Plant extends LivingThings<CarbonDioxide, Oxygen> {
  Plant(super.name);

  @override
  LivingThings reproduce(LivingThings yourPartner, String name) {
    return Plant(name);
  }

  @override
  Oxygen breathe(CarbonDioxide carbonDioxide) {
    setOutOfBreath();
    print("$name is breathing");
    return Oxygen();
  }

  @override
  void kill(LivingThings<Particles, Particles> another) {
    print("I am just a plant i cannot kill living things");
  }

  Fruits giveFruits(){
    return Fruits();
  }
}
