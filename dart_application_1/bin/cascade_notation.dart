class Player{
  String name;
  int xp;
  String team;
  
  Player({required this.name, required this.xp, required this.team});
  
void sayHello(){ 
  print("Hi my name is $name");
}
}
void main(){
  var nico = Player(name: 'nico', xp: 1200, team: 'red');
  var potato = nico
  ..nico.name = 'las'
  ..nico.xp =  120000
  ..nico.team = 'blue';
  ..sayHello();
  // ..은 위의 nico를 가르키게 된다.
}

// positional parameter는 required이다. -> 하나라도 지우면 동작하지 않는다.
// named parameter에는 기본적으로 required 속성이 없다. -> 명시적
// 콜론(:)만 써서 argument와 property를 일대일 초기화하는 생성자를 만들 수 있다.
