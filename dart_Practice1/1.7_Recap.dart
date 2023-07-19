void main() {
  int i = 12;
  var name = 'a';
  var value = 12;
  i = 12314;
  name = '123123l';
  value = 129939;
  final Final = 'Hello';

  dynamic animal;
  if (animal is String) {}
  if (animal is int) {}

  const api_key = 123123412; // 컴파일 전에 값을 알고 있어야 한다.(앱스토어에 올리기 전에)

  late final String string;
  string = 'name';

  late String? quiet = null;
  quiet?.isEmpty;
  print(quiet);
  if (quiet != null) {
    quiet.isEmpty;
  }
  print(quiet);
  print(string);
}
