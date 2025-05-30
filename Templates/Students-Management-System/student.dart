import 'dart:io';

class Student {
  String name;
  String regNO;

  Student(this.name, this.regNO);

  @override
  String toString() => 'Name:$name, RegNO:$regNO';
}

List<Student> students = [];

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

void addStudent() {
  stdout.write('Enter Student name: ');
  String? name = stdin.readLineSync();

  stdout.write('Enter Student Reg NO: ');
  String? regNo = stdin.readLineSync();

  if (name != null && name.isNotEmpty && regNo != null && regNo.isNotEmpty) {
    students.add(Student(name, regNo));
    print('Student Added');
  } else {
    print('Invalid Data.Try agen');
  }
}

void viewStudents() {
  print('\n📋 Student List');
  if (students.isEmpty) {
    print('No students found');
  } else {
    for (var i = 0; i < students.length; i++) {
      print('${i + 1}, ${students[i]}');
    }
  }
}
