class Strong {
  final double strenghtLevel = 1500.99;
//   클래스일 뿐 어떠한 생성자도 가지고 있지 않다.
}

class QuickRunner {
  void runQuick() {
    print("ruuuuuu!");
  }
}

class Tall {
  final double height = 1.99;
}

enum Team { red, blue }

class Player with Strong, QuickRunner, Tall {
//   Flutter나 Flutter 플러그인들을 사용할 때 with를 많이 접하게 된다.
  final Team team;

  Player({
    required this.team,
    required String name,
  }); //super를 통해 부모 클래스와 상호작용할 수 있게 해줌.
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}

// extend랑은 다르다
// -> extend를 하게 되면 확장한 그 클래스는 부모 클래스가 되고, 자식 클래스는 부모 클래스를
// super클래스를 통해서 접근이 가능하며, 그 순간 부모 클래스의 인스턴스가 된다.
// 하지만 Mixin은 with라는 키워드를 사용해서 역할은 단순히
// Mixin 내부의 프로퍼티와 메소드들을 가져오는 것 뿐이다.
void main() {
  var player = Player(
    team: Team.red,
    name: 'note',
  );
  player.runQuick();
}
