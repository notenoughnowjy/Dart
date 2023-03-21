class Human {
  final String name;
  Human(
      {required this.name}); //required를 하게 된다면 18행 Player의 super에서 :name을 필요로 하게 된다.
//   만약 required가 없다면 18행에는 super(name);이 된다.
  void sayHello() {
    print("Hi my name is $name");
  }
}

enum Team { red, blue }

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name: name); //super를 통해 부모 클래스와 상호작용할 수 있게 해줌.

  @override
  void sayHello() {
    super.sayHello(); //Human의 print("Hy my name is $name");을 불러온다.
    print('and I paly for ${team}');
  }
}

void main() {
  var player = Player(
    team: Team.red,
    name: 'note',
  );
  player.sayHello();
}
