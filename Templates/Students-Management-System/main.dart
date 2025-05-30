import './student.dart';
import 'dart:io';

void main() {
  bool running = true;
  while (running) {
    print('\n🎓 Student Management System');
    print('1. Add Student');
    print('2. View Students');
    print('3. Settings');
    print('4. Exit');

    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        addStudent();
        break;
      case '2':
        viewStudents();
        break;
      /**
      case '3':
        showSettings();
        break;
      */

      case '4':
        print('👋 Exiting...');
        running = false;
        break;
      default:
        print('❌ Invalid choice');
    }
  }
}
