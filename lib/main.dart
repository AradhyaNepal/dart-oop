import 'aradhya.dart';
import 'human.dart';

void main() async {
  final normalAnimal = Human();
  final a2 = Aradhya();
  while (true) {
    print("Is me Normal Human");
    normalAnimal.whereIAm();
    normalAnimal.walk();
    normalAnimal.whereIAm();
    print("-----------------------------");

    print("Is me A2, the second personality of Aaradhya");

    a2.whereIAm();
    a2.walk();
    a2.whereIAm();
    a2.bark();
    print("-----------------------------");
    await Future.delayed(Duration(milliseconds: 5000));
  }
  a2.dispose();
}
//Abstract class, Interface and Mixin
