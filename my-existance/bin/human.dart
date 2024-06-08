import 'animal.dart';

class Human extends Animal {
  final String specialization;

  Human(
    super.name, {
    required this.specialization,
  });
}
