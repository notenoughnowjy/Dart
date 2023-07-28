class Player2 {
  late final String name;
  late int xp;

  Player2(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }
  void SayHello() {
    print("Hello My name is $name and My xp is $xp");
  }
}

void main() {
  Player2("JunYeong", 1500).SayHello();
}
