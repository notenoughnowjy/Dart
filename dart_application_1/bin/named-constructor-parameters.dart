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

// class Player {
//   final String name; //late
//   int xp; //late
//   String team;
//   int age;

//   Player(this.name, this.xp, this.team, this.age);
//   //   Player(String name, int xp) {
// //     this.name = name;
// //     this.xp = xp;
// //   }

//   void sayHello() {
//     print("Hi my name is $name");
//   }
// }

// void main(List<String> arguments) {
//   var player = Player("JunYoung", 1500, 'red', 12);
//   // JunYoung이 이름인지, red가 이름인지 문자형으로 구분 되어있어서 구별이 되지 않는다.
//   player.sayHello();
//   var player2 = Player("notenoughnowjy", 2500, 'blue', 12);
//   player2.sayHello();
//     // 그래서 다음과 같은 코드를 작성해서 구별이 잘 되게 한다.
// }

class Player {
  final String name; //late
  int xp; //late
  String team;
  int age;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });
// this.name, this.xp가 null이 될 수 있기 때문에 Dart에서 또 다르게 선언을 해줘야한다.
// 첫번째 방식은 기본값을 주는것
// 두번째 방식은 required를 넣어주는 것. -> 니콜라스 선생은 이것을 선호한다.
  void sayHello() {
    print("Hi my name is $name");
  }
}

void main(List<String> arguments) {
  var player = Player(
    name: "JunYoung",
    xp: 1500,
    team: 'red',
    age: 12,
  );
  var player2 = Player(
    name: "Leesu",
    xp: 2500,
    team: 'blue',
    age: 12,
  );
  // 맨 끝에 콤마(,)를 붙이는 이유는 코드 포맷팅용이다.
  player.sayHello();
  player2.sayHello();
}
