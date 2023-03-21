enum Team {red, blue}
enum XPLevel{beginner, medium, pro}
//enum은 개발자들이 잘못 입력해서 실수하는 것을 줄여주게 된다.

class Player{
  String name;
  int xp;
  Team team;
  
  Player({required this.name, required this.xp, required this.team});
  
void sayHello(){ 
  print("Hi my name is $name");
}
}
void main(){
  var nico = Player(name: 'nico', xp: XPLevel.medium, team: Team.blue);
  var potato = nico
  ..nico.name = 'las'
  ..nico.xp =  XPLevel.beginner
  ..nico.team = Team.blue;
  ..sayHello();
}
