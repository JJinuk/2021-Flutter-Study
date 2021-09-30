bool isNoble(int atomicNumber) {
  return nobleGases[atomicNumber] != null;
}
// 파라미터나 리턴값의 타입이 명확한 경우엔 생략 가능
isNoble2(atomicNumber) {
  return nobleGases[atomicNumber] != null;
}
// shorthand
bool isNoble3(int atomicNumber) => nobleGases[atomicNumber] != null;

// Parameters
// Named parameters
// named param을 받는다는 것을 파라미터를 {}로 감싸므로 알릴 수 있다.
void enableFlags({bool? bold, bool? hidden}){
  print('bold: $bold \nhidden: $hidden');
}

// named parameter는 optional하지만 required를 앞에 붙여 must한 속성을 가질 수 있음.
void needName({int? age, required String name}){
  print("name: $name, age: $age");
}

// optional parameters
String say(String from, String msg, [String? device]){
  var result = '$from says $msg';
  if(device != null) {
    result += 'with $device';
  }
  return result;
}

// set default value to parameters
void setDefault({bool bold = false, bool hidden = false}) {
  print("$bold $hidden");
}

void printElement(int element) {
  print(element);
}

var nobleGases = <int, String> {};

void main() {
  nobleGases[2] = 'He';
  print(isNoble(2));
  print(isNoble2(2));
  print(isNoble3(3));
  
  // named parameter를 쓰는 함수는 호출 시 반드시 name: value형태로 호출해야함.
  enableFlags(bold: true);
  
  // name을 전달하지 않으면 오류발생.
  needName(age:24, name:"son");
  
  print(say('byungwook', 'hello', 'iphone11'));
  
  var list = [1,2,3,4];
  list.forEach(printElement);
}