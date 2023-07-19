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
