String sayHello(String name, int age, [String? country]) =>
    "안녕하세요. $name, $age살 이시고, $country에서 오셨네요!";
void main() {
  sayHello(
    "JunYeong",
    23,
  );
  print(sayHello('Consider', 23));
}
