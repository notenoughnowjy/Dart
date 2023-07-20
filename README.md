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
