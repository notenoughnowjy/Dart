void main() {
  var numbers = [1, 2, 3, 4];
  var givemefive = true;
  List<int> numbers2 = [
    1,
    2,
    3,
    4,
    if (givemefive) 5, // == if(givemefive){numbers2.add(5);} => collections
  ];
  numbers2.add(14);
  print(numbers.last);
  print(numbers2);
}
