Stream<int> countUpTo(int limit) async* {
  for (int i = 1; i <= limit; i++) {
    await Future.delayed(Duration(seconds: 1));
    yield i;
  }
}
