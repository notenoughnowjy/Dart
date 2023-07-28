String sayHi(Map<String, String> userInfo) {
  return "Hi ${userInfo['name']}";
}

void main() {
  print(sayHi({"name": 'asdqwd'}));
}
