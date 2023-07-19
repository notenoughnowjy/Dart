// => 과 void function(){}의 의미는 똑같은 것이다.
void sayHello(String name) {
  print("Hello $name nice to meet you");
}

String sayGoodBye(String potato) {
  return "Hello $potato nice to meet you!";
}

String Goodmorning(String potato) => "Hello $potato nice to meet you!";

num plus(num a, num b) => a + b;

void main() {
  String name = 'JunYeong';
  sayHello(name);
  print(sayGoodBye('JunYeong'));
  print(Goodmorning('Goodmorning'));
}
