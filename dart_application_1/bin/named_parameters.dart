import 'package:dart_application_2/dart_application_2.dart'
    as dart_application_2;

// String sayHello(
//     {String name = 'junyoung', int age = 12, String country = 'korea'}) {
//   return "Hello $name, you are $age, and you come from $country";
// }

// void main(List<String> arguments) {
//   //print(sayHello('junyoung', 23, 'korea')); // -> 좋은 방법이 아니다.
//   print(sayHello());
// }

String sayHello(
    {required String name, required int age, required String country}) {
  return "Hello $name, you are $age, and you come from $country";
}

void main(List<String> arguments) {
  //print(sayHello('junyoung', 23, 'korea')); // -> 좋은 방법이 아니다.
  print(sayHello(name: 'junyoung', age: 12, country: 'korea'));
}
