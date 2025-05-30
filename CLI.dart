import 'dart:io';

void main() {
  bool running = true;
  List<String> names = [];

  while (running) {
    print('\n=== Maim Menu ===');
    print('1. Add name');
    print('2. View name');
    print('3.Exit');
    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter name to add: ');
        String? name = stdin.readLineSync();
        if (name != null && name.isNotEmpty) {
          names.add(name);
        }
        break;

      case '2':
        print('\nsaved names');
        for (var n in names) {
          print('- $n');
        }
        break;

      case '3':
        print('Exiting...');
        running = false;
        break;

      default:
        print('Invalid choice .Please try again');
    }
  }
}
