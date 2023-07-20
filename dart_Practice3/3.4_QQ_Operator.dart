// ?? => QQ Operator
// ?= =>
// ??= => QQ equals 혹은 QQ asignment operator라고 불린다.

String capitalizename(String? name) =>
    // name != null ? name.toUpperCase() : 'ANON';
    name?.toUpperCase() ?? 'ANON';

void main() {
  print(capitalizename(null));
  print(capitalizename("junyoung"));
}
