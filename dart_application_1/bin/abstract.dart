abstract class Person {
  // 추상 클래스
  void walk(); // 메소드의 반환값만 설정
}

class Player extends Person {
  // 추상 클래스를 상속받음. walk라는 메소드를 구현해야 함
  String name;
  int xp;
  String team;

  Player({required this.name, required this.xp, required this.team});

  void walk() {
    // 추상 메소드 재정의
    print("Player is walking");
  }
}

class Coach extends Person {
  // 추상 클래스를 상속받음
  void walk() {
    // 추상 메소드 재정의
    print("Coach is walking");
  }
}

void main() {
  var player = Player(name: 'coma', xp: 1700, team: 'blue');
  var coach = Coach();
  player.walk();
  coach.walk();
}
