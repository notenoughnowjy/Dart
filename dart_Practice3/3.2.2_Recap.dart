void main() {
  print(SayHello(
    name: "JunYeong",
    age: 15,
    country: "korea",
  ));
}

String SayHello({
  required String name,
  required int age,
  required String country,
}) {
  return "$name $age $country";
}
