import 'package:dart_application_1/dart_application_1.dart'
    as dart_application_2;

void main(List<String> arguments) {
  var name = 'junyoung';
  var age = 10;
  var greeting =
      "Hello everyone, my name is $name and I'm ${age + 2} nice to meet you!";
  // var greeting = 'Hello everyone, my name is $name, nice to meet you!';
  //$를 적고 변수를 적는다 그리고 {}안에 계산 문제를 넣고 더하거나 곱한다.
  print(greeting);
}
