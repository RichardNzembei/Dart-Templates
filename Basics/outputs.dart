import 'dart:io';

void main() {
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();
  stdout.write('Enter your Age: ');
  int? age;
  try {
    age = int.parse(stdin.readLineSync()!);
  } catch (e) {
    print('Invalid input. please enter valid numder');
  }

  print('Hello, $name you are now $age');
}
