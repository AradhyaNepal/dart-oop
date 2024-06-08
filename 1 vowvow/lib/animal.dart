abstract class Animal {

  int _currentPosition=0;
  final int _movementSpeed;

  Animal(this._movementSpeed);

  void walk() {
    print("I am moving... Yah....");
    _currentPosition += _movementSpeed;
  }

  void whereIAm() {
    print("I am at $_currentPosition");
  }
}
