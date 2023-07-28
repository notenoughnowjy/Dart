class Player {
  String name, team;
  int age, xp;

  Player({
    required this.name,
    required this.age,
    required this.xp,
    required this.team,
  });

  void SayHello() {
    print(
      "$name, $age, $team, $xp",
    );
  }
}

void main() {
  Player.Blue(
    name: "JunYeong",
    age: 23,
    xp: 999999,
    team: "Red",
  ).SayHello();
}
