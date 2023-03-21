import 'package:dart_application_2/dart_application_2.dart'
    as dart_application_2;

// typedef ListOfInts = List<int>;

// ListOfInts reverseListOfNumbers(List<int> list) {
//   var reversed = list.reversed;
//   return reversed.toList();
//   // typedef는 자료형에 alias를 붙일 수 있게 해준다.
// }

// void main(List<String> arguments) {
//   print([1, 2, 3]);
// }
typedef User = Map<String, String>;
// 나만의 alias를 붙일 수 있게 해준다. -> alias=별명

String sayHi(User userInfo) {
  return "Hi ${['name']}";
}

void main(List<String> arguments) {
  sayHi({"name": 'junyoung'});
}
//구조화된 데이터의 형태를 지정하고 싶다면 클래스를 배워야 힌다ㄹ 