abstract class Human {
  void walk();
  void run();
}

enum Team { red, blue }

class Person extends Human {
  String name;
  int xp;
  Team team;

  Person({
    required this.name,
    required this.xp,
    required this.team,
  });
  void SayHello() {
    print("Hello $name!! You are $team");
  }

  @override
  void walk() {
    print("Person is Walking");
  }

  @override
  void run() {
    print("Person is Walking");
  }
}

class Coach extends Human {
  @override
  void run() {
    print("Coach is Walking");
  }

  @override
  void walk() {
    print("Coach is Walking");
  }
}

void main() {
  Person(name: "name", xp: 13, team: Team.blue).SayHello();
  Person(name: "name", xp: 9999, team: Team.red).run();
  Coach().walk();
}
