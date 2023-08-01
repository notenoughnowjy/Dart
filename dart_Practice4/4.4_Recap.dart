class Person {
  final String name;
  String team;
  int xp, age;

  Person({
    required this.name,
    required this.team,
    required this.age,
    required this.xp,
  });

  // ":" 은 property를 초기화하는 것 이다.
  Person.fromJson(Map<String, dynamic> personJson)
      : name = personJson['name'],
        xp = personJson['xp'],
        team = personJson['team'],
        age = personJson['age'];

  void sayHello() {
    print("Hello My name is $name, I'm $age years old");
  }
}

void main() {
  var apiData = [
    {
      "name": "JunYeong",
      "team": "red",
      "xp": 0,
      "age": 23,
    },
    {
      "name": "Consider",
      "team": "Blue",
      "xp": 0,
      "age": 24,
    },
    {
      "name": "notenoughnowjy",
      "team": "yello",
      "xp": 0,
      "age": 25,
    }
  ];
  apiData.forEach((personJson) {
    var person = Person.fromJson(personJson);
    person.sayHello();
  });
}
// 결과값 : string을 key로, dynamic value를 values로 갖는 Map을 성공적으로 가져왔다
