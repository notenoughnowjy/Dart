void main() {
  Map<int, bool> test = {
    1: true,
    2: false,
    3: true,
  };
  print(test);

  var player = {
    // (key, value)로 이루어진 Map을 생성했다. any => 어느 것이든 올 수 있다.
    'name': 'JunYeong',
    'xp': 100.12,
    'superpower': true,
  };

  print(player);
  // 컴파일러가 key와 value의 자료형을 유추해준다.

  Map<List<int>, bool> maptest = {
    [1, 2, 3, 4]: true,
    [5, 6, 7, 8]: false,
  };
  print(maptest);

  List<Map<int, Object>> GamePlayer = [
    {1: 'ID', 2: 'XP', 3: 'TEST'}
  ];
  print(GamePlayer);
}
