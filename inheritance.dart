class Animal {
  void move() {
    print('Animal is moving');
  }
}

class Dog extends Animal {
  void bark() {
    print('Animal is barking');
  }
}

void main() {
  var dog = Dog();
  dog.move();
  dog.bark();
}
