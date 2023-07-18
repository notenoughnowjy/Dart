import 'dart:io';

void main() {
  var name = stdin.readLineSync();
  int n = int.parse(name!);
  print(name);
  print(name.runtimeType);
  print(n.runtimeType);
}
