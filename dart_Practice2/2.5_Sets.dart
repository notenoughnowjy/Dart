void main() {
  //set에 속한 모든 아이템들은 유니크하다.
  //Set 안에 속한 값들은 변경될 수 없다.
  //List안의 값들은 변경 및 추가가 가능하다.
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers);
}
