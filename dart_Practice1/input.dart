import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  int n = int.parse(input!);
  print("number는 $n 입니다.");
  print(n.runtimeType);
  print(input.runtimeType);

  var number = int.parse(stdin.readLineSync()!);
  print(number);
  print(number.runtimeType);

  int num1 = int.parse(stdin.readLineSync()!);
  print(num1);
  print(num1.runtimeType);
}
