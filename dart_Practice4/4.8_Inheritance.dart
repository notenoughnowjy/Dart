class Human {
  final String name;
  Human(this.name);

  void sayHello() {
    print("My name is $name");
  }
}

enum Team { red, blue }

class Player extends Human {
  final Team team;

  Player({
    required this.team,
    required String name,
  }) : super(name); // oop의 개념

  @override
  void sayHello() {
    super.sayHello();
    print("and I am $team");
  }
}

void main() {
  var player = Player(team: Team.red, name: "Jun");
  player.sayHello();
}
