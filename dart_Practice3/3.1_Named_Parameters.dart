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
