// Without null safety:
// bool isEmpthy(String string) => string.length == 0;

// main() {
//   isEmpthy(null);
// }
void main(){
  String? nico ='nico';  // ?는 null의 오류를 없애주고 Dart에게 미리 문자형에 대해 알려준다.
  nico = null;
    // if(nico!=null){
    //   nico.isNotEmpty; //기본적으로 모든 변수는 nonullable이다 -> ? 하나로 해결 가능
    // }
    nico?.isNotEmpty; //값이 존재하는지 확인 후 작성 
    nico.;
    // if(nico != null){
    //   nico.isNotEmpty
    // }
}