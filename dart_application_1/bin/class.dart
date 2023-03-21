import 'package:dart_application_2/dart_application_2.dart'
    as dart_application_2;
// 클래스를 생성할 때는 타입을 꼭 명시해야 한다.

class Player {
  final String name = 'JunYoung';
  int xp = 1500;

  void sayHello() {
    print("Hi my name is $name");
    // class 메서드 안에서는 this를 붙이지 않는 것을 Dart에서는 권장하나, 어쩔 수 없이 같은 변수명이 있을 때는 this를 붙여서 사용해야 한다.
  }
}

void main(List<String> arguments) {
  var player = Player();
  player.sayHello();
}
