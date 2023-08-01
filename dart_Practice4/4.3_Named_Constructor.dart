class Player {
  String name, team;
  int age, xp;

  Player({
    required this.name,
    required this.age,
    required this.xp,
    required this.team,
  });

// named constructor
  Player.Blue({required String name, required int age})
      : this.name = name,
        this.age = age,
        this.team = 'Blue',
        this.xp = 0;

  void SayHello() {
    print(
      "$name, $age, $team, $xp",
    );
  }

// positional constructor
  Player.Red(String name, int age)
      : this.name = name,
        this.age = age,
        this.team = 'Red',
        this.xp = 100;
}

void main() {
  var Blueplayer = Player.Blue(
    name: "JunYeong",
    age: 23,
  );

  Blueplayer.SayHello();

  var Redplayer = Player.Red("Consider", 23);
  Redplayer.SayHello();
}
