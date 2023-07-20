void main() {
  String? name;
  name ??= 'junyoung';
  name = null;
  name ??= 'another';
  print(name);
}
