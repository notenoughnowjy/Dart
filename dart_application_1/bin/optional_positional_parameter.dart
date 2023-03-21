import 'package:dart_application_2/dart_application_2.dart'
    as dart_application_2;

String sayHello(String name, int age,
        [String? country =
            'korea']) => //대괄호로 감싸주고 해야한다. -> country가 있을 수도 없을 수도 있다는 것을 명시하기 위해서
    'Hello $name, you are $age years old from $country'; //korea는 default value이다.
void main(List<String> arguments) {
  var results = sayHello('junyoung', 12);
  print(results);
}
