import 'dart:math';
import 'dart:convert';

void main() {
  int number = Random().nextInt(100);
  print("Random number: $number");
  var jsonString = '{"name": "Richie", "age": 21 }';
  var user = jsonDecode(jsonString);
  print("User name is ${user['name']}");
}
