import 'living_things.dart';
import 'particles.dart';

class Animal extends LivingThings<Oxygen,CarbonDioxide> {
  Animal(super.name);

  @override
  LivingThings reproduce(LivingThings yourPartner, String name) {
    return Animal(name);
  }

  @override
  CarbonDioxide breathe(Oxygen oxygen) {
    print("$name is breathing");
    return CarbonDioxide();
  }
}
