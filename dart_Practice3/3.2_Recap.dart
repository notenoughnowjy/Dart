void main() {
  print(sayHello(
    name: "Consider",
    age: 19,
    country: "korea",
  ));
}

String sayHello({
  String name = 'JunYeong',
  int age = 12,
  String country = 'Korea',
}) {
  return "$name$age$country";
}
