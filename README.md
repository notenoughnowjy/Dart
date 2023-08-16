# Dart

<img src="https://img.shields.io/badge/Dart-0175C2?style=flat-square&logo=Dart&logoColor=white"/>

- <a href="https://www.youtube.com/redirect?event=video_description&redir_token=QUFFLUhqbEo4X0hfNzJCMUZUUUlsN05ObFUwdEMzVmEwd3xBQ3Jtc0tudDdXOEtveFcya0RqVzROeTE1Y28wOEhkcDgtaDJVQXdKeGZ4SDBsRlB4TTc4dmY0cUo4YUQ4YlQ3M3N6LUlKZ201UzFuQlU2ZjNlMDlKMlBBZmVvLTlTdnFqMHVzQlp5Z3NFc1ZGUlZJQVhXcXRpRQ&q=https%3A%2F%2Fbit.ly%2F3WyL9xH&v=l05wkkCCe2Y">Dart Free lecture in youtube</a>

---

- <a href="https://naan.co.kr/103?category=886051">How to make Dart Project in VSCode</a>

---

- <a href="https://velog.io/@ghrud92/Dart의-Constructor">**_constructor_**</a> <br>
  This is very important for Dart.

---

- <a href="https://github.com/notenoughnowjy/Dart/blob/main/Dart_Certificate_of_Completion.jpeg">Dart_certificate_of_Copletion.jpeg</a>

## <img width=600px src="https://github.com/notenoughnowjy/Dart/blob/main/Dart_Certificate_of_Completion.jpeg?raw=true"> </img>

## [2023.07.18]

### Dart - input(Scanner)

```dart
import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  int n = int.parse(input!);
  print("number는 $n 입니다.");
  print(n.runtimeType); // int
  print(input.runtimeType); // String
}
```

Dart에서는 Java처럼 바로 int형으로 Scanner를 넣는 것이 불가능하다. Dart에서는 String으로 값을 받고, int n = int.parse(input!);을 통해서 int형으로 변환시켜 주어야 한다.

하지만 저렇게 값을 받지 않고 바로 받는 방법도 존재한다.

```dart
var number = int.parse(stdin.readLineSync()!);
  print(number);
  print(number.runtimeType);
```

이런 식으로 var number에 int.parse후 string값으로 받고 바로 변환시켜줘도 된다.

```dart
  int num1 = int.parse(stdin.readLineSync()!);
  print(num1);
  print(num1.runtimeType);
}
```

바로 int로 받아주는 것도 가능하다.

```dart
import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  int n = int.parse(input!);
  print("number는 $n 입니다.");
  print(n.runtimeType);
  print(input.runtimeType);

  var number = int.parse(stdin.readLineSync()!);
  print(number);
  print(number.runtimeType);

  int num1 = int.parse(stdin.readLineSync()!);
  print(num1);
  print(num1.runtimeType);
}
```

위의 코드는 전체 코드이다.

---

### Null Safety

null safety는 개발자가 null 값을 참조할 수 없게 하는 것이다.

```dart
bool isEmpty(String string) => string.length == 0;
main(){
isEmpty(null);
}
```

NoSuchMethodError를 실행한다. String을 보내야 할 곳에 null을 보냈기 때문이다. null에는 length라는 속성이 없기 때문이기도 하다. 이와 같은 에러는 컴파일러에서 잡을 수 있는 에러가 아니다. 이런 상황이 발생하지 않도록 null를 삭제하기에는 null 값은 유용하다. 그럼 어떻게 null 값을 참조하는 것을 dart는 어떻게 보호할까? dart에서는 변수가 null이 될 수 있음을 명확히 표시해야한다.

```dart
void main(){
	String name = "jisoung";
	name = null;
}
```

이 코드는 에러가 난다. name이 null 값을 참조할 수 있다고 알려주지 않고 null 값을 참조하기 때문이다.

```dart
void main(){
	String? name = "jisoung";
	name = null;
}
```

이 코드는 에러가 나지 않는다. 차이점이 보이는가? 바로 `?`를 사용해 이 변수에는 null이 참조될 수 있음을 알려주는 것이다. 만약 `?`를 붙인 변수는 이 변수가 null인지 아닌지 확인해야 한다.

```dart
void main(){
	String? name = "jisoung";
	name = null;
	if(nico != null){
		nico.isNotEmpty;

	}
}
```

```dart
// null safety는 null값을 참조할 수 없게 했다.
// ?는 Null Safety를 의미한다.
void main() {
  String? name = 'JunYeong';
  name = null;
  name?.isNotEmpty;

  if (name != null) {
    name.isNotEmpty;
  }

  print(name);
  print(name.runtimeType);
}
```

---

## [2023.07.19]

### Dart - Practice

dart에서 const는 compile-time constant를 만들어준다. `compile-time constant` : 프로그램이 컴파일되는 동안 값을 미리 알 수 있는 상수 final이랑 동일하게 작동, 값을 수정할 수 없다. 앱 스토어에 올리기 전에 값을 알고 있는 값으로 알면 편하다.

```dart
void main() {
  const API = 1234;
  const api = 'hello';
  const AP = 1.2;
}
```

- List

```dart
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
```

Dart에서는 이런 식으로 List를 선언한다. 다른 언어와의 다른 점은 list안에서 if문을 사용하여 조건적으로 값을 넣을 수 있다는 것이다.

- String Interpolation

```dart
void main() {
  String name = 'JunYeong';
  int age = 23;
  String greeting = "안녕 나는 $name 그리고 나는 $age살이야.";
  print(greeting);
}
```

Dart에서는 $를 사용해 문장에 변수를 삽입해서 값을 출력한다.

- Collection for

```dart
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
```

Dart에서는 따로 선언 없이 Collection For을 통해서 리스트 안에 다른 리스트의 값을 넣어줄 수 있다.

- Maps

나는 이 부분이 가장 중요하다고 생각했다. 애플리케이션 또는 웹에서 데이터를 처리할 때 많이 사용되는 부분이기도 하기 때문이다.

```dart
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
```

{key, value}로 이루어져 있으며, 타 언어의 any와 비슷하다. 즉 어느 것이든 올 수 있다는 것이다. 또한 List<Map< 으로도 가능하고, Map<List<로도 가능하다. 다만 두개의 문법에서는 약간의 차이가 존재한다.

- Sets

```dart
void main() {
  Set<int> numbers = {1, 2, 3, 4};
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  numbers.add(1);
  print(numbers);
}
```

Set에 속한 모든 아이템들은 유니크하다.또한 안에 속한 값들은 변경될 수 없며, List안의 값들은 변경 및 추가가 가능하다.

- Defining a function

```dart
void sayHello(String name) {
  print("Hello $name nice to meet you");
}

String sayGoodBye(String potato) {
  return "Hello $potato nice to meet you!";
}

String Goodmorning(String potato) => "Hello $potato nice to meet you!";

num plus(num a, num b) => a + b;

void main() {
  String name = 'JunYeong';
  sayHello(name);
  print(sayGoodBye('JunYeong'));
  print(Goodmorning('Goodmorning'));
}
```

일반 함수의 선언과 문법만 다를 뿐 별 다른 것은 없다. 추가적인 메모로는 => 과 void function(){}의 의미는 똑같은 것이다.

### #3.1 Named Parameters

파라미터는 크게 positional parameter와 named parameter가 존재하게 된다. positional는 당연하게도 순서에 따라 파라미터값들을 넣어주는 것을 이야기한다. named는 이 파라미터가 어떤 피라미터 입니다. 라고 명시해주면서 코드를 작성하는 것을 의미한다.

큰 프로그래밍을 작성할 때는 네이밍으로 작성하는 것이 좋기 때문에 평소에 name parameter를 사용하는 것에 길들여지는 것이 좋다.

```dart
// named parameter는 기본 함수 선언 부분에서 {}를 추가해서 사용하면 된다.
// dart에서 null이 될 것 같을때 required를 사용해서 sayHello()가 호출될 때 name, age, country를 가져와야 한다는 것을 알 게 된다. => 필수값
void main() {
  // print(sayHello('JunYeong', 23, 'Republic of Korea'));
  print(sayHello(
    name: 'JunYeong',
    age: 23,
    country: 'Republic of Korea',
  ));
}

String sayHello({
  // Default Value를 Named Parameter를 통해 설정이 가능하다.
  String name = 'Consider',
  int age = 25,
  String country = 'Korea',
}) {
  return "Hello my name is $name, I'm $age old and I'm from $country";
}

String sayHollo({
  // 아래 처럼 Required를 사용하게 된다면 default 값을 사용할 수 없다. 하지만 required 덕분에 함수에 필요한 값이 설정되지 않는다면 함수 또한 실행되지 않는다.
  required name = 'Consider',
  required age = 25,
  required country = 'Korea',
}) {
  return "Hello my name is $name, I'm $age old and I'm from $country";
}
```

### #3.2 Recap

named parameter를 할 때에는 첫번째 방법으로는 default value를 설정하는 것이 있고 두번째 방법으로는 required를 사용하는 것이 있다. 둘 중 편한 것을 사용하면 편하다.

```dart
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
```

---

### #3.3 Optional Positional Parameter

Optional Positional Parameter는 함수의 선언 부분에서 `[]`를 치고, 자료형 타입 뒤에 ?를 붙임으로써 null값을 반환할 수 있고, Default Value를 설정해서 기본 값을 출력할 수 있다.

```dart
String sayHello(String name, int age, [String? country]) =>
    "안녕하세요. $name, $age살 이시고, $country에서 오셨네요!";
void main() {
  sayHello(
    "JunYeong",
    23,
  );
  print(sayHello('Consider', 23));
}
```

### #3.4 QQ Operator

먼저 boolean에는 `Condition ? value : value` 조건이 있다. null에도 이와 같은 조건이 존재한다. 바로 QQ Operator이다. QQ Operator는 ??과 ??=이 존재한다.

??는 `name?.toUpperCase() ?? 'ANON';` 와 같이 사용되어 진다. 코드를 해석해보면 null이 아니면 null일지 아닐지도 모르는(?) name의 값을 모두 대문자로 출력한다. 하지만 그렇지 않고 null이면 ‘ANON’을 출력한다는 의미이다. 즉, QQ Operator를 이용해서 가독성을 높일 수 있고, 코드의 길이를 줄일 수 있다.

??=는 QQ Equals 혹은 QQ assignment operator라고 불린다. 이것은 `name ??= 'junyoung';` 이런 식으로 사용되어진다. 코드를 해석해보자면 `String? name;`으로 선언 되어 있으므로 `name`은 `null`값으로 시작한다. 그 다음 `name ??= 'junyoung';`은 `name`의 값이 null이면 `junyoung`을 출력하라는 의미이다. 그래서 출력 결과를 보면 약간의 오류와 함께 `junyoung`이 출력된 것을 볼 수 있다. 이것은 아래의 QQ Equals를 보면 `junyoung`을 출력 후 name의 값이 `null`이 아닌 상태에서 `'another'`값을 받게 되어서 오류가 발생하는 것이다.

이것을 올바르게 출력하려면 No Error QQ Equals처럼 출력하면 된다. 즉 중간값에 null을 선언해줘서 name을 null로 바꾸어 주는 것이다.

![스크린샷 2023-07-20 오후 5.30.45.png](https://s3-us-west-2.amazonaws.com/secure.notion-static.com/0be2be8d-19a3-442d-a099-b3075d981849/%E1%84%89%E1%85%B3%E1%84%8F%E1%85%B3%E1%84%85%E1%85%B5%E1%86%AB%E1%84%89%E1%85%A3%E1%86%BA_2023-07-20_%E1%84%8B%E1%85%A9%E1%84%92%E1%85%AE_5.30.45.png)

- QQ Operator

```dart
// ?? => QQ Operator
// ??= => QQ equals 혹은 QQ asignment operator라고 불린다.

String capitalizename(String? name) =>
    // name != null ? name.toUpperCase() : 'ANON';
    name?.toUpperCase() ?? 'ANON';

void main() {
  print(capitalizename(null));
  print(capitalizename("junyoung"));
}
```

- QQ Equals, QQ assignment operator

```dart
void main() {
  String? name;
  name ??= 'junyoung';
  name ??= 'another';
  print(name);
}
```

- No Error QQ Equals

```dart
void main() {
  String? name;
  name ??= 'junyoung';
  name = null;
  name ??= 'another';
  print(name);
}
```

## [2023.07.28]

## Dart

### #3.5_Typedef

typedef를 사용하기 위해서는 다음과 같은 구문을 사용합니다.

`typedef 유형 이름 = 함수 타입;`

위의 List<String>을 함수의 타입으로 정의하고 싶다면 다음과 같이 정의할 수 있습니다.

`typedef ListOfString = List<String>;`

이제 ListOfString 타입의 함수를 정의하고 사용할 수 있습니다.

```dart
typedef ListOfString = List<String>;

ListOfString reverseListOfName(ListOfString list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  var data = ['john','mike','tom'];
  print(reverseListOfName(data));
}
```

### typedef의 장단점

typedef를 사용하면 함수의 타입을 명확하게 표현할 수 있어 가독성이 높아집니다. 또한, 특정 타입을 가진 함수를 많이 사용하는 경우 간결한 코드를 작성할 수 있습니다. 하지만, typedef를 사용할 때 명시적으로 타입을 정해야 하므로 개발자가 추가적인 코드를 작성해야 할 수도 있습니다.

그러나, Dart의 경우 강력한 제네릭 기능을 갖추고 있어 타입을 명시적으로 정의하지 않아도 되는 경우도 많습니다. 따라서, typedef를 사용하는 것이 필요한 경우에만 사용하면 됩니다.

```dart
typedef ListOfInts = List<int>;

List<int> reversedOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

void main() {
  print(reversedOfNumbers([1, 2, 3]));
}
```

```dart
typedef UserInfo = Map<String, String>;

String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  print(sayHi({"name": 'asdqwd'}));
}
```

---

### #4.0 Your First Dart Class(04:42)

Dart Class

```dart
class Person {
  String name = "JunYeong";
  int score = 2000;

  void SayHello() {
    print("Hello!! My name is $name");
  }
}

void main() {
  Person().SayHello();
}
```

---

### #4.1 Construction (03:58)

Constructions

첫번째의 Construction은 Java와 유사하듯이 class의 name과 xp의 값을 받고 this.name으로 선언 후 sayHello 함수를 호출해서 main에서 값을 정하고 출력한다.

```dart
class Player2 {
  late final String name;
  late int xp;

  Player2(String name, int xp) {
    this.name = name;
    this.xp = xp;
  }
  void SayHello() {
    print("Hello My name is $name and My xp is $xp");
  }
}

void main() {
  Player2("JunYeong", 1500).SayHello();
}
```

하지만 아래의 코드는 여러 상황들을 줄여버리고, 한 줄의 코드로 선언해서 출력는 모습을 볼 수 있다. 즉 훨씬 더 간결해졌다.

```dart
class Player2 {
  late final String name;
  late int xp;

  Player2(this.name, this.xp);

  void SayHello() {
    print("Hello My name is $name and My xp is $xp");
  }
}

void main() {
  Player2("JunYeong", 1500).SayHello();
}
```

---

### #4.3 Named Constructor Parameters (04:12)

Construcor을 통해서 값을 배정하게 된다면, 가독성에서 순서를 기억하고, 어떤 것이 어떤것인지에 대해서 잘 모를 수 있다. 이것을 방직하기 위해서 Named Constructor을 통해서 가독성을 높일 수 있다.

```dart
class Player2 {
  late final String name;
  late int xp;
  String team;
  int age;

  Player2({
    required this.name,
    required this.xp,
    required this.team,
    required this.age,
  });

  void SayHello() {
    print("Hello My name is $name and My xp is $xp");
  }
}

void main() {
  Player2(
    name: "JunYeong",
    team: "Red",
    xp: 1500,
    age: 23,
  ).SayHello();
}
```

## Dart

### #4.6 Enums(03:12)

```dart
// ignore_for_file: public_member_api_docs, sort_constructors_first

enum Team { red, blue }

class Player {
  String name;
  int xp;
  Team team;

  Player({
    required this.name,
    required this.xp,
    required this.team,
  });

  void sayHello() {
    print("Hello $name, $team");
  }
}

void main() {
  Player(name: "name", xp: 123, team: Team.blue).sayHello();
}
```

### enum의 기본 사용법

예를 들어 공지사항, 게시판, 미정의로 게시판의 타입이 구분된다고 생각하면, enum을 사용하면 아래와 같이 선언해서 사용할 것이다.

```dart
enum BoardType{notice, free, undefined}
```

일반 String 타입과 enum 타입의 차이점은 아래의 코드와 같다

```dart
// BAD
// board 모델에서 string타입의 type 변수를 사용할경우

if (board.type == "notice") {
   ...
} else if (board.Type == "free") {
  .....
} else {
....
}

// GOOD
// enum 형식으로 type 변수를 사용할경우
if (board.type == BoardType.notice) {
...
} else  if (board.type == BoardType.free) {
...
} else {
...
}
```

---

### Dart에서 String을 enum으로 바로 변환할 수 없다.

enum을 사용하는 것이 String을 사용하는 것보다 훨씬 더 좋은 방법임은 틀림없다. 하지만 Dart에서는 서버 API 등에서 받은 String 형식의 값을 enum으로 변환하는 별도의 기능을 제공하지 않아 String 값을 enumdㅡ로 변환하는데 불편함이 있다.

서버로부터 게시판 목록을 가져오는 API에서 아래와 같은 결과를 받았다고 가정해보자. 이 응답 값을 앱에서 사용하기 위해서는 적당한 모델 클래스로 변환해야 할 것 이다.

```json
// API response - JSON

"boaders"  : [
    {
      "id" : "notice01",
      "title" : "공지사항",
       "type" : "notice",
       .....
    },
    {
      "id" : "free01",
      "title" : "자유게시판",
       "type" : "free",
       .....
    },
]
```

위의 JSON 코드의 결과값을 아래 Boader 클래스로 변환한다고 가정해보자.

`Board 클래스`의 `type 필드`는 API에서는 문자열 `“notice”`임으로 `parseToboardType` 함수와 같이 String 형식의 값을 BoaderType함수와 같이 `String 형식의 값을 BoaderType으로 변화하는 과정이 필요`하다.

```json
// Boader Model
class Boader {
     final String id;
     final String title;
     final BoaderType type;
}

// value를 입력받아 BoarderType으로 변환함
BoaderType parseToBoardType(String value) {
   if (value == "notice") {
      return BoaderType.notice;
  } else if (value == "free") {
      return BoaderType.free
  }
  return BoaderType.undefinde;
}
```

### Extention과 EnumData 클래스를 이용한 쉬운 enum 변환 및 활용

Dart에서는 Extension을 이용해서 enum을 화갖ㅇ해서 사용할 수 있다.

enumData라는 클래스를 만들어 enum에 필요한 property를 정의하였고, extention의 code와 name getter을 통해 별도의 조건식 없이 값을 가져다 사용할 수 있도록 하였다.

```json
class EnumData {
  final String code;
  final String displayName;
  EnumData({required this.code, required this.displayName});
}

enum BoardType { notice, free, undefined }

extension BoaderTypeExt on BoaderType {
  static final _data = {
    BoaderType.notice: EnumData(code: 'notice', displayName: 'Notice'),
    BoaderType.free: EnumData(code: 'free', displayName: 'Free'),
    BoaderType.undefined: EnumData(code: '', displayName ''),
  };

  static BoaderType.getByCode(String code) {
    try {
      return _data.entries.firstWhere((el) => el.value.code == code).key;
    } catch (e) {
      return BoaderType.undefined;
    }
  }
  String get code => _data[this]!.code;
  String get displayName => _data[this]!.displayName;
}
```

### 최신의 Dart

extention의 도움 없이 enum을 편하게 사용 가능하다!

```json
enum BoardType {
  notice('notice', '공지사항'),
  free('free', '자유게시판'),
  undefined('undefined', '');

  const BoardType(this.code, this.displayName);
  final String code;
  final String displayName;

  factory BoardType.getByCode(String code){
    return BoardType.values.firstWhere((value) => value.code == code,
                                        orElse: () => BoardType.undefined);
  }
}
```

⚡로직 중간에 문자열을 직접 사용하는 코드를 만들어서는 안된다! 특히 고정값들만 있을 경우에는 꼭 enum으로 만들어서 사용하는 것이 권장!

출처 :

[[Flutter/Dart] dart에서 열거형(enum) 의 효율적인 변환과 활용](https://ctoahn.tistory.com/27)
