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

# Dart

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
