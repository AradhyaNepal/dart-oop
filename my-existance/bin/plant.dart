import 'living_things.dart';
import 'carbon_dioxide.dart';
import 'oxygen.dart';

class Plant extends LivingThings {
  Plant(super.name);

  @override
  LivingThings reproduce(LivingThings yourPartner, String name) {
    return Plant(name);
  }

  @override
  Oxygen breathe(CarbonDioxide oxygen) {
    // TODO: implement breathe
  }
}
