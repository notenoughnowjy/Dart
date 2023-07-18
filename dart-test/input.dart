import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  int n = int.parse(input!);
  print("number는 $n 입니다.");
  print(n.runtimeType);
  print(input.runtimeType);
}
