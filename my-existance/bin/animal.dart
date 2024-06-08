import 'living_things.dart';
import 'carbon_dioxide.dart';
import 'oxygen.dart';

class Animal extends LivingThings {
  Animal(super.name);

  @override
  LivingThings reproduce(LivingThings yourPartner, String name) {
    return Animal(name);
  }

  @override
  CarbonDioxide breathe(Oxygen oxygen) {
    // TODO: implement breathe
  }
}
