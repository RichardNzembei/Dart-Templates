class Person {
  double height;
  double weight;

  Person(this.height, this.weight);

  double get bmi => weight / (height * height);
}
