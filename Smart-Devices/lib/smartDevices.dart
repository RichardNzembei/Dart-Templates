mixin WifiConnectable {
  void connectToWifi(String network) {
    print('📡 Connected to $network via Wi-Fi');
  }
}
mixin VoiceControl {
  void respondToVoice(String command) {
    print('🎙️ Executing voice command: $command ');
  }
}
mixin Schedulable {
  void schedule(String task, String time) {
    print('⏰ Scheduled "$task" at $time');
  }
}

class SmartLight with WifiConnectable, Schedulable {
  void turnOn() => print('💡 Smart light is ON');
  void turnOff() => print('💤 Smart light is OFF');
}

class SmartSpeaker with WifiConnectable, VoiceControl {
  void playMusic() => print('Playing musc....');
}

class SmartFan with WifiConnectable, Schedulable, VoiceControl {
  void startFan() => print('🌀 Fan started');
  void stopFan() => print('🛑 Fan stopped');
}
