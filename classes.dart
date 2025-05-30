class Person {
  String name;
  int age;

  Person(this.name, this.age);
  int yearBorn() {
    return DateTime.now().year - age;
  }

  void greet() {
    print('Hello i am $name, now $age years old');
    print('i was born in ${yearBorn()}');
  }
}

class DreamCar {
  String brand;
  String model;
  int year;

  DreamCar(this.brand, this.model, this.year);

  void drive() {
    print('Your dream car is $brand $model model year $year');
  }

  int carAge() {
    return DateTime.now().year - year;
  }
}

class RaceCar extends DreamCar {
  bool sport;
  RaceCar(String brand, String model, int year, this.sport)
    : super(brand, model, year);

  void myDreamRaceCar() {
    String isSportInfo = sport ? 'Its sport' : 'its not sport';
    print('My dream race car is $brand $model year $year $isSportInfo');
  }
}

void main() {
  var person1 = Person('Richie', 21);
  person1.greet();
  var myDreamcar = DreamCar('BMW', 'M4 competition', 2019);
  myDreamcar.drive();

  var myRaceCar = RaceCar('Porsche', '911', 2021, false);
  myRaceCar.myDreamRaceCar();
}
