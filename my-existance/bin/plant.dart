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
    print("$name is breathing");
    return Oxygen();
  }
}
