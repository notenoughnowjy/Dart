typedef ListOfInts = List<int>;

List<int> reversedOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  print(reversedOfNumbers([1, 2, 3]));
}
