// ignore_for_file: public_member_api_docs, sort_constructors_first
mixin Strong {
  final double strengthLevel = 1509.09;
}

mixin QuickRunner {
  void runQuick() {
    print("runnnnnnnnn!");
  }
}

mixin tall {
  final double heigh = 180;
}

enum Team { red, blue }

class Person {
  final Team team;

  Person({
    required this.team,
  });

  void sayHello() {
    print("Hello $team");
  }
}

class Player with Strong, QuickRunner, tall {
  @override
  void runQuick() {
    super.runQuick();
  }
}

void main() {
  Person(team: Team.red).sayHello();
  Player().runQuick();
}
