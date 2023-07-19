//따로 선언 없이 Collection For을 통해서 리스트 안에 다른 리스트의 값을 넣어줄 수 있다.
void main() {
  List<String> oldFriends = [
    'JunYeong',
    'baby',
  ];
  var newFriends = [
    'lewis',
    'ralph',
    for (var friends in oldFriends)
      {
        "❤️ $friends",
      }
  ];
  print(newFriends);
}
