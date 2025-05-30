const oneSecond = Duration(seconds: 1);

Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

Future<String> fetchUserData() async {
  await Future.delayed(Duration(seconds: 2));
  return 'User: Richie';
}
