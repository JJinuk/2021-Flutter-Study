void printNumber(int number) {
  print('Input: $number');
}

void main() {
  
  var number = 422;
  printNumber(number);
  print(number.runtimeType);
  print(printNumber.runtimeType);
  
  // nullable variables. 초기화 하지 않아도 null값이 들어가 에러가 발생하지 않음.
  int? c;
  print(c);
  
  // non-nullable하지만 사용 전에 선언할수 있는 late. 초기화 해주지 않으면 에러발생.
  late String str;
  str = 'not null';
  print(str);
  
  // final과 const
  // final로 선언한 객체의 필드는 변경 가능 / const 객체는 필드 변경 불가능.
  var foo = const[];
  foo = [1, 2, 3];
  print(foo);
  final bar = const [];
  print(bar);
  
  // develop mode에서 assert()의 파라미터값이 false라면 에러를 반환한다.
  assert(1 == 2);
  
  
  //Numbers
  // int, double => num
  num x = 1;
  print(x.runtimeType);
  
  x += 0.5;
  print(x.runtimeType);
  
  var exponent = 1.42e5;
  print(exponent);
  
  //type change
  //Atoi
  String str2 = '42';
  var atoi = int.parse(str2);
  print(atoi);
  // iToa
  String itoa = 42.toString();
  print('$itoa: ${itoa.runtimeType}');
  // String -> double
  var stod = double.parse('10.123');
  print("$stod: ${stod.runtimeType}");
  // double -> String
  var dtos = stod.toStringAsFixed(2);
  print("$dtos: ${dtos.runtimeType}");
  
  // String
  // multi-line
  var s1 = '''
multi-line strings
zz
  ''';
  print(s1);
  //raw string
  var s = r'\n \t ${s1}';
  print(s);
  
  // Booleans
  // check empty string.
  var fullName = 'zz';
  print(fullName.isEmpty);
  // check zero
  var hitPoints = 0;
  print(hitPoints == 0);
  assert(hitPoints == 0);
  
  // check null
  String? unicorn;
  print(unicorn == null);
  print(unicorn.runtimeType);
  unicorn = 'not-null';
  print(unicorn);
  
  // check NaN
  var iMeantToDoThis = 0/0;
  print(iMeantToDoThis.isNaN);
  assert(iMeantToDoThis.isNaN);
  
  // List
  var list = [
    'Car',
    'Boat',
    'Plane',
  ];
  print(list.length);
  print(list[1]);
  
  // list 이어붙이기
  var list2 = ['A', 'B', 'C', ...list];
  print(list2);
  // if를 사용하여 리스트 요소 만들기
  var nav = [
    'A',
    'B',
    'C',
    if (true) 'true',
  ];
  print(nav);
  // for문으로 리스트 만들기
  var listOfStrings = [
    '#0',
    for (var i in [1, 2, 3]) '#$i'
  ];
  print(listOfStrings);
  
  // Set
  var halogens = {'fluorine', 'chlorine', 'bromine', 'astatine'};
  print(halogens);
  print(halogens.length);
  // add
  var elements = <String>{};
  elements.add('neon');
  elements.addAll(halogens);
  print(elements);
  
  var ele = <int>{};
  ele.add(5);
  print(ele);
  
  // Maps
  var gifts = {};
  print(gifts.runtimeType);
  gifts['first'] = 'hello';
  print(gifts);
  print(gifts.runtimeType);
  gifts[1] = 'one';
  print(gifts);
  print(gifts.runtimeType);
  
  var g = <String, String>{};
  print(g.runtimeType);
  g['f'] = 'hello';
}
