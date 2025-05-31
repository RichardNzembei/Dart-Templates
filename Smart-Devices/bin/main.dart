import 'dart:io';

import '../lib/smartDevices.dart';

void main() {
  SmartLight light = SmartLight();
  SmartSpeaker speaker = SmartSpeaker();
  SmartFan fan = SmartFan();

  bool running = true;

  while (running) {
    print('\n🔧 Smart Devices control panel');
    print('1. Smart Light');
    print('2. Smart Speaker');
    print('3. Smart Fan');
    print('4. Exit');

    stdout.write('\n Enter your choice:');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        controlLight(light);
        break;
      case '2':
        controlSpeaker(speaker);
        break;
      case '3':
        controlFan(fan);
        break;
      case '4':
        running = false;
        print('👋 Exiting...');
        break;
      default:
        print('❌ Invalid choice. Try again.');
    }
  }
}

void controlLight(SmartLight light) {
  print('\n💡 Smart Light Options');
  print('1. Turn ON');
  print('2. Turn OFF');
  print('3. Connect to Wi-Fi');
  print('4. Schedule Task');
  stdout.write('Choose Action: ');
  String? action = stdin.readLineSync();

  switch (action) {
    case '1':
      light.turnOn();
      break;
    case '2':
      light.turnOff();
      break;
    case '3':
      stdout.write('Enter Wi-Fi name');
      light.connectToWifi(stdin.readLineSync()!);
      break;
    case '4':
      stdout.write('Enter Task name');
      String task = stdin.readLineSync()!;
      stdout.write('Enter time(eg. 10pm)');
      String time = stdin.readLineSync()!;
      light.schedule(task, time);
      break;
    default:
      print('❌ Invalid option.');
  }
}

void controlSpeaker(SmartSpeaker speaker) {
  print('\n🔊 Smart Speaker Options');
  print('1. Connect to Wi-Fi');
  print('2. Play Music');
  print('3. Use Voice Command');

  stdout.write('Choose action: ');
  String? action = stdin.readLineSync();

  switch (action) {
    case '1':
      stdout.write('Enter Wi-Fi name: ');
      speaker.connectToWifi(stdin.readLineSync()!);
      break;
    case '2':
      speaker.playMusic();
      break;
    case '3':
      stdout.write('Enter voice command: ');
      speaker.respondToVoice(stdin.readLineSync()!);
      break;
    default:
      print('❌ Invalid option.');
  }
}

void controlFan(SmartFan fan) {
  print('\n🌀 Smart Fan Options');
  print('1. Start Fan');
  print('2. Stop Fan');
  print('3. Connect to Wi-Fi');
  print('4. Schedule');
  print('5. Voice Command');

  stdout.write('Choose action: ');
  String? action = stdin.readLineSync();

  switch (action) {
    case '1':
      fan.startFan();
      break;
    case '2':
      fan.stopFan();
      break;
    case '3':
      stdout.write('Enter Wi-Fi name: ');
      fan.connectToWifi(stdin.readLineSync()!);
      break;
    case '4':
      stdout.write('Enter task: ');
      String task = stdin.readLineSync()!;
      stdout.write('Enter time: ');
      String time = stdin.readLineSync()!;
      fan.schedule(task, time);
      break;
    case '5':
      stdout.write('Enter voice command: ');
      fan.respondToVoice(stdin.readLineSync()!);
      break;
    default:
      print('❌ Invalid option.');
  }
}
