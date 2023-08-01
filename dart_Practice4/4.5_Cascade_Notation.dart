class Person {
  String name;
  int age, xp;
  Person({
    required this.age,
    required this.name,
    required this.xp,
  });
  void sayHello() {
    print("Hello $name");
  }
}

void main() {
  var junyeong = Person(age: 23, name: 'JunYeong', xp: 1500)
    ..name = 'Consider'
    ..xp = 120102301
    ..age = 13;
  junyeong.sayHello();
}
