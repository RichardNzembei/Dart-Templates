# 🔌 Dart Smart Device CLI

A **menu-driven Dart CLI application** to simulate smart home device control (like Smart Light, Fan, and Speaker), with:

- 🧠 Mixins for device features (Wi-Fi, Scheduling, Voice)
- 🔒 Login system with hardcoded users
- 📄 Device status tracking (in-memory or saved to file)
- 🎛️ Interactive command-line interface

---

## 📦 Features

✅ Smart Devices:
- `SmartLight`: On/Off, Wi-Fi connect, schedule tasks
- `SmartFan`: Fan control, voice commands, Wi-Fi
- `SmartSpeaker`: Music play, voice control

✅ Functionality:
- Mixins for reusable capabilities (`WifiConnectable`, `Schedulable`, `VoiceControl`)
- Login/authentication with hardcoded users
- Device status tracking in memory or saved to `device_status.txt`
- CLI with nested menus to operate and inspect devices

---

## 🚀 Getting Started

### Prerequisites
- Dart SDK: [Install Dart](https://dart.dev/get-dart)

### Running the App

```bash
dart run bin/main.dart
```

### File Structure

```
/lib
  smartDevices.dart     # Mixins and device classes

/bin
  main.dart             # Main CLI entry point

device_status.txt       # Optional file-based logging (created at runtime)
```

---

## 🔐 Authentication

Login required to use the system:

| Username | Password |
|----------|----------|
| admin    | 1234     |
| user1    | pass1    |

You can expand this system to support file-based registration or role-based access.

---

## 📄 Example CLI Flow

```
👤 Username: admin
🔒 Password: 1234
✅ Login successful!

🎛️ Device Menu
1. Operate Smart Light
2. Operate Smart Fan
3. Operate Smart Speaker
4. View Status
5. Exit
```

---

## 🔧 Device Usage

Each device class includes custom methods and shared mixin methods:

```dart
SmartLight light = SmartLight();
light.connectToWifi('MyNetwork');
light.schedule('Turn On', '8 PM');
light.turnOn();
```

Use `printStatus()` to see current state.

---

## 📁 Saving Status to File

Use the `saveStatusToFile()` helper to log device state changes:

```dart
saveStatusToFile('SmartLight', 'ON at 8 PM');
```

This will append to `device_status.txt`.

---

## 🧩 Ideas for Extension

- Add registration flow and store credentials
- Use JSON files for dynamic state persistence
- Encrypt passwords
- Add device categories, roles (admin vs user)
- Track usage logs

---

## 🛠️ Technologies Used

- Dart CLI
- `dart:io` for file I/O and console input
- Dart mixins for reusable capabilities

---

## 👨‍💻 Author

Built with ❤️ in Dart by [Your Name]

---

## 📜 License

MIT License — free to use and modify.