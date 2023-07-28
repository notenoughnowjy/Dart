class Player2 {
  late final String name;
  late int xp;
  String team;
  int age;

  Player2({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void SayHello() {
    print("Hello My name is $name and My xp is $xp");
  }
}

void main() {
  Player2(
    name: "JunYeong",
    team: "Red",
    xp: 1500,
    age: 23,
  ).SayHello();
}
