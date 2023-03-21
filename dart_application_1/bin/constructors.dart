import 'package:dart_application_2/dart_application_2.dart'
    as dart_application_2;
// 클래스를 생성할 때는 타입을 꼭 명시해야 한다.

// class Player {
//   late final String name;
//   late int xp;

//   Player(String name, int xp) {
//     this.name = name;
//     this.xp = xp;
//   }

//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }

// void main(List<String> arguments) {
//   var player = Player("JunYoung", 1500);
//   player.sayHello();
//   var player2 = Player("notenoughnowjy", 2500);
//   player2.sayHello();
// }

class Player {
  final String name; //late
  int xp; //late

  Player(this.name, this.xp);
  //   Player(String name, int xp) {
//     this.name = name;
//     this.xp = xp;
//   }

  void sayHello() {
    print("Hi my name is $name");
  }
}

void main(List<String> arguments) {
  var player = Player("JunYoung", 1500);
  player.sayHello();
  var player2 = Player("notenoughnowjy", 2500);
  player2.sayHello();
}
