var name = 'Richie';

int age = 21;

var uni = 'Kabarak University';

var possesions = ['laptop', 'Oppo Phone', 'watch'];

var profile = {
  'tag': ['profile pic'],
  'url': './images/profile.jpeg',
};

void main() {
  print(
    'hello world i am $name $age years old. I am a student at $uni in my bag i have ${possesions}',
  );

  for (final possesion in possesions) {
    print(possesion);
  }

  if (age < 18) {
    print('You are an underage');
  }
  print('You are an adult');
}
