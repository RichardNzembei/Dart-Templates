class Vehicle {
  String brand;
  int year;
  Vehicle(this.brand, this.year);
  void Car() {
    print('My car is a $brand , year $year');
  }
}

class Truck extends Vehicle {
  double loadCapacity;

  Truck(String brand, int year, this.loadCapacity) : super(brand, year);

  void myTruck() {
    print(
      'i own a $brand truck, year $year carriers a load capacity of $loadCapacity tonnes',
    );
  }
}

class Bike extends Vehicle {
  bool hasHelmet;

  Bike(String brand, int year, this.hasHelmet) : super(brand, year);

  void myBike() {
    String hasHelmetInfo = hasHelmet
        ? 'come with an helmet'
        : 'didnt come with an helmet';

    print('I have a bike $brand, year: $year . It $hasHelmetInfo');
  }
}

void main() {
  var vehicle = Vehicle('Mercedes', 2021);
  vehicle.Car();
  var truck = Truck('iSUZU', 2017, 5.5);
  truck.myTruck();

  var bike = Bike('Yamaa', 2012, false);
  bike.myBike();
}
