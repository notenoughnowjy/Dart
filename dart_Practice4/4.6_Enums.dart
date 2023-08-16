// ignore_for_file: public_member_api_docs, sort_constructors_first

enum Team { red, blue }

class Player {
  String name;
  int xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hello $name, $team");
  }
}

void main() {
  Player(name: "name", xp: 123, team: Team.blue).sayHello();
}
