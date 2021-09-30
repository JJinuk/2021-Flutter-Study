String? returnNull() {
  // return 값이 명시되어있지 않다면 null을 리턴함
}

Function makeSpeaker(String prefix) {
  return (String name) => print("$prefix: hello $name");
}

// expr1 ?? expr2
// expr1이 null이 아니면 expr1반환. 그렇지 않으면 expr2반환.
String playerName(String? name) => name ?? 'Guest';

main() {
  var son = makeSpeaker("son");
  var unknown = makeSpeaker("unknown");
  
  son("dart");
  unknown("Flutter");
  
  print(returnNull());
  print(returnNull);
  print(makeSpeaker);
  
  var value = 'not null';
  var b;
  print(b);
  // b가 null이면 value를 대입한다. null이 아니면 걍 냅둠.
  b ??= value;
  print(b);
  
  
  bool isPublic = false;
  var visibility = isPublic ? 'public':'private';
  print(visibility);
  
  
}