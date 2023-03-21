void main() {
  int i = 12;
  var name = 'la'; //작은 지역변수에서는 var이 낫다.
  i = 12121221; //수정 가능
  name = 'lalall'; // 수정 가능
  final String name1 = 'nico'; //변수 수정의 불가능 -> final 사용
  name1 = '121212'; //수정이 안되어진다 why? -> final이기 때문

  dynamic = name2; //dynamic은 어떤 데이터가 들어올지 모른다고 말해주는 것
  name2 = '12212';
  name2 = 'hello';

  // const는 우리가 값을 알고있을 때 선언하는 것이다 ex) API key 같은
  // null saftey는 잘못된 상태의 변수를 참조하는 것을 막아준다. -> null값의 참조를 막아준다.
  // ?를 붙여주게 된다면 Dart도 null값에 대해 알게된다.
}
