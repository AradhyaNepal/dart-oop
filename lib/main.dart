import 'aradhya.dart';
import 'human.dart';

void main() async {

  while (true) {
    final ram = Human();
    print("Is me Ram");
    ram.whereIAm();
    ram.walk();
    ram.whereIAm();

    print("Is me A2, the second personality of Aaradhya");
    final a2 = Aradhya();
    a2.whereIAm();
    a2.walk();
    a2.whereIAm();
    await Future.delayed(Duration(milliseconds: 1500));
  }
}
//Abstract class, Interface and Mixin
