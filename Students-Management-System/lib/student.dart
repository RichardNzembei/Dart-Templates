import 'dart:io';

class Student {
  String name;
  String regNO;

  Student(this.name, this.regNO);

  @override
  String toString() => 'Name:$name, RegNO:$regNO';
}

List<Student> students = [];

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

void showSettings() {
  bool inSettings = true;

  while (inSettings) {
    print('\n⚙️ Settings');
    print('1. Show student count');
    print('2. Clear all students');
    print('3. Back to main menu');

    stdout.write('Enter your setting choice');
    String? subchoice = stdin.readLineSync();

    switch (subchoice) {
      case '1':
        print('👥 Total students: ${students.length}');
        break;

      case '2':
        students.clear();
        print('🧹 All students cleared.');
        break;

      case '3':
        inSettings = false;
        break;

      default:
        print('❌ Invalid settings choice');
    }
    ;
  }
}
