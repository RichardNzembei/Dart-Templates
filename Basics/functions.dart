//Function with Parameters
void greet(String name, int age) {
  print('Hello $name your now $age years old');
}

//Function with Return Value
int add(int a, int b) {
  return a + b;
}

//Arrow functions
int multiply(int x, int y) => x * y;

//Optional postional parameters
void greetUser([String name = 'Guest']) {
  print('Hello $name');
}

//named parameters
void createAccount({required String name, int age = 18}) {
  print('Account created for $name, age $age');
}

void main() {
  greet('Reuben', 21);

  int result = add(3, 5);
  print(result);

  int answer = multiply(45, 5);
  print(answer);

  greetUser('Christine');

  createAccount(name: 'Nzembei', age: 21);
  createAccount(name: 'Mwendwa');

  //anonymous functions
  var list = [1, 2, 3, 5];
  list.forEach((item) {
    print('Item: $item');
  });

  //high order functions
  Function createMultiplier(int multiplier) {
    return (int value) => value * multiplier;
  }

  var tripple = createMultiplier(3);
  print(tripple(3));

  List<int> ages = [12, 30, 18, 21];
  List<int> adults = ages.where((age) => age >= 18).toList();
  print(adults);
}
