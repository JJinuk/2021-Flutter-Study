### A basic Dart Program

```dart
void printInteger(int aNumber) {
  print('The number is $aNumber.');
}

void main() {
  var number = 42;
  printInteger(number);
}
```

## Variable

### Default variable

타입 추론이 가능하기 때문에 `var`만으로도 사용 가능

```dart
void main() {
	var age = 33;                // int type
	var birth = 12.25;           // double type
	var name1 = 'Bob';           // String type
	var name2 = 'Susan';         // String type
	var isMarried = true;        // bool type
	var isDivorced = false;      // bool type
}
 
```

유추할 수 있는 유형은 명시적으로 선언해준다.

```dart
String name = 'Bob';
```

`nullable variable` 초기화하지 않아도 기본 값이 `null`

```dart
int? lineCount;
assert(lineCount == null);
```

`null safety`를 사용할 경우 `null safety`를 사용하기 전 `non-nullable` 변수의 값을 초기화 해야 한다.

```dart
int lineCount = 0;
```

선언된 지역변수 초기화할 필요 ❌, 사용하기 전에는 값을 할당해줘야 한다.

```dart
int lineCount;

if (weLikeToCount) {
	lineCount = countLines();
} else {
	lineCount = 0;
}

print(lineCount);

```

### late variables

변수에 `late`표시하여 에러를 수정할 수 있다.

```dart
late String description;

void main() {
	description = 'Feijoada!'
	print(description);
}
```

✔️ `late` 변수를 초기화하지 않을 경우  변수를 사용할 때 런타임 오류가 발생한다.

`late`변수를 선언과 동시에 초기화할 경우 두 가지 케이스에 유용하다.

1. 변수가 필요없고, 초기화하는데 비효율적일 때
2. 초기화한 인스턴스 변수에 접근할 때

```dart
late String temperature = _readThermometer();
```

### Final and const

변수를 변경하지 않을 경우 `final, const` 사용, `final` 변수는 한 번만 설정 가능하고 `const` 변수는 컴파일 시간 상수이다.

```dart
final name = 'Bob'; // Without a type annotation
final String nickname = 'Bobby';

❌ name = 'Alice'; // Error: a final variable can only be set once.
```

**compile-time constants**로 만들 변수에 대해 `const`를 사용한다. `const` 변수가 class에 있는 경우 `static const`로 표시한다. 

```dart
const bar = 1000000; // Unit of pressure (dynes/cm2)
const double atm = 1.01325 * bar; // Standard atmosphere
```

상수 값을 만들거나 상수 값을 생성하는 생성자를 선언할 때도 `const` 변수를 사용할 수 있다.

```dart
var foo = const [];
final bar = const [];
const baz = []; // `const []` 해당
```

`const`를 생략할 수도 있다.

```dart
foo = [1, 2, 3]; // const []

❌ baz = [42]; // Error: Constant variables can't be assigned a value.
```

type check ans casts(`is` and `as`), collection if, spread operator(`...` and `...?`) 사용할 때도 `const`선언 가능하다.

```dart
const Object i = 3; // Where i is a const Object with an int value...
const list = [i as int]; // Use a typecast.
const map = {if (i is int) i: 'int'}; // Use is and collection if.
const set = {if (list is List<int>) ...list}; // ...and a spread.
```

## Built-in types

- Numbers(int, double)
- Strings(String)
- Booleans(bool)
- Lists(List, know as arrays)
- Sets(Set)
- Maps(Map)
- Runes(Runes)
- Symbols(Symbol)
- The value null(Null)

### Nmbers

형변환 

```dart
// String -> int
var one = int.parse('1');
assert(one == 1);

// String -> double
var onePointOne = double.parse('1.1');
assert(onePointOne == 1.1);

// int -> String
String oneAsString = 1.toString();
assert(oneAsString == '1');

// double -> String
String piAsString = 3.14159.toStringAsFixed(2);
assert(piAsString == '3.14');
```

### String

`toString()` method

```dart
var s = 'string interpolation';

assert('Dart has $s, which is very handy.' ==
    'Dart has string interpolation, '
        'which is very handy.');
assert('That deserves all caps. '
        '${s.toUpperCase()} is very handy!' ==
    'That deserves all caps. '
        'STRING INTERPOLATION is very handy!');
```

`+`를 사용하여 문장을 이을 수 있다.

```dart
var s1 = 'String '
    'concatenation'
    " works even over line breaks.";
assert(s1 ==
    'String concatenation works even over '
        'line breaks.');

var s2 = 'The + operator ' + 'works, as well.';
assert(s2 == 'The + operator works, as well.');
```

multi-line string

```dart
var s1 = '''
You can create
multi-line strings like this one.
''';

var s2 = """This is also a
multi-line string.""";
```

raw string(문자들이 서로 독립적으로 구분되는 문자열 상수)

```dart
var s = r'In a raw string, not even \n gets special treatment.';
```

### Lists

데이터 순서가 있고 중복⭕️

spread operator(...)

```dart
var list = [1, 2, 3];
var list2 = [0, ...list];
assert(list2.length == 4);
```

spread 연산자 오른쪽에 있는 식이 null일 경우 null 인식 spread(...?)를 사용하여 예외를 방지할 수 있다.

```dart
var list;
var list2 = [0, ...?list];
assert(list2.length == 1);
```

if문을 이용하여 list만들기

```dart
var nav = [
  'Home',
  'Furniture',
  'Plants',
  if (true) 'Outlet'
];

>>> [Home, Furniture, Plants, Outlet]
```

for문을 이용해서 list만들기

```dart
var listOfInts = [1, 2, 3];
var listOfStrings = [
  '#0',
  for (var i in listOfInts) '#$i'
];
assert(listOfStrings[1] == '#1');

>>> **[#0, #1, #2, #3]**
```

### Set

데이터 순서가 없고 중복 ❌

```dart
var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};

>>> {fluorine, chlorine, bromine, iodine, astatine}
```

{ }을 이용하여 빈 set을 만들 수 있다.

```dart
var names = <String>{};
// Set<String> names = {}; // This works, too.
// var names = {}; // Creates a map, not a set.
```

add( ) or addAll( )을 이용하여 추가할 수 있다.

```dart
var elements = <String>{};
  elements.add('neon');
  elements.addAll(halogens);

>>> {neon, fluorine, chlorine, bromine, astatine}
```

.length를 사용하여 set에 있는 item의 갯수를 파악할 수 있다.

```dart
var elements = <String>{};
elements.add('fluorine');
elements.addAll(halogens);
assert(elements.length == 5);
```

### Maps

키(key)와 값(value)로 구성되어 있으며, 키는 중복❌ 값은 중복⭕️

```dart
var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 'golden rings'
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 'argon',
};

>>> {first: partridge, second: turtledoves, fifth: golden rings}
>>> {2: helium, 10: neon, 18: argon}
```

Map 생성자를 이용하여 동일한 객체를 만들 수 있다.

```dart
var gifts = Map<String, String>();
gifts['first'] = 'partridge';
gifts['second'] = 'turtledoves';
gifts['fifth'] = 'golden rings';

var nobleGases = Map<int, String>();
nobleGases[2] = 'helium';
nobleGases[10] = 'neon';
nobleGases[18] = 'argon';

>>> {first: partridge, second: turtledoves, fifth: golden rings}
>>> {2: helium, 10: neon, 18: argon}
```

### Runes and grapheme clusters

유니코드 사용 가능

```dart
import 'package:characters/characters.dart';
...
var hi = 'Hi 🇩🇰';
print(hi);
print('The end of the string: ${hi.substring(hi.length - 1)}');
print('The last character: ${hi.characters.last}\n');

>>> Hi 🇩🇰
>>> The end of the string: �
>>> The last character: 🇩🇰
```
