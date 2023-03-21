import 'package:dart_application_2/dart_application_2.dart'
    as dart_application_2;

void main(List<String> arguments) {
  // var numbers = {1,2,3,4}; -> {}를 사용 시 Set 사용
  // var numbers = [1,2,3,4]; -> []를 사용 시 List 사용

  // Set<int> numbers = {1, 2, 3, 4};
  // List<int> numbers = {1, 2, 3, 4}; -> X
  List<int> numbers = [1, 2, 3, 4]; //-> O //나중에 추가했던 1도 같이 나온다.
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers);
  // 1을 많이 추가했지만, 1,2,3,4밖에 없다
  // set은 sequence다. -> listf랑 같지만 모든 요소가 유니크하다.
  // 요소가 항상 하나씩만 있어야 되면 Set을 사용
  // 유니크할 필요가 없다면 List를 사용
}
