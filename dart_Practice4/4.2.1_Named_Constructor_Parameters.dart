// ignore_for_file: public_member_api_docs, sort_constructors_first
class Player2 {
  final String name;
  int xp;
  String team;
  int age;

  Player2({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void SayHello() {
    print("Hello My name is $name and mMy xp is $xp");
  }
}

void main() {
  Player2(name: "JunYeong", xp: 1500, team: "RED", age: 23).SayHello();
}
