void launchRocket(int astronauts) {
  if (astronauts == 0) {
    throw StateError('No astronauts  onboard. Launc aborted');
  }
  print('Rocket launching with $astronauts astronauts');
}
