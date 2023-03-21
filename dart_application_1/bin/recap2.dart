import 'package:dart_application_2/dart_application_2.dart'
    as dart_application_2;

class Player {
  final String name;
  int xp, age;
  String team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });
  // class property

  Player.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age, //파라미터를 받고 있다.
        this.name = name, //파라미터를 받고 있다.
        this.team = 'blue',
        this.xp = 0;
  // 콜론(:)을 넣음으로써 Dart에게 Player 객체를 초기화하겠다고 한 것

  Player.createRedPlayer(
    // 전부 다 required를 사용할 필요는 없다.
    String name,
    int age,
  )   : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  // BluePlayer에 대한 새로운 메서드를 만들었다.
  void sayHello() {
    print("Hi my name is $name");
  }
}

void main(List<String> arguments) {
  var redPlayer = Player.createRedPlayer("JunYoung", 23);
  // 처음에 에러가 나는 이유는 named syntax를 사용하지 않고 positonal syntax를 사용하기 때문

  var player = Player.createBluePlayer(
    name: "Leesu",
    age: 12,
  );
}

// positional parameter는 required이다. -> 하나라도 지우면 동작하지 않는다.
// named parameter에는 기본적으로 required 속성이 없다. -> 명시적
// 콜론(:)만 써서 argument와 property를 일대일 초기화하는 생성자를 만들 수 있다.
