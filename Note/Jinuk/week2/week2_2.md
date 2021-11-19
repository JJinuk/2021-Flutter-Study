## Functions

다트는 OOP이며, 함수조차 객체 유형인 함수도 있다.

```dart
bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

isNoble(atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}       // 파라미터나 리턴 값의 타입이 명확할 경우 생략 가능
```

식이 하나만 포함된 함수의 경우

```dart
bool isNoble(int atomicNumber) => _nobleGases[atomicNumber] != null;
```

`⇒ expr`는 `{ return expr; }`의 약자이다. 이를 화살표 구문이라고 한다.

### Parameters

#### Named parameters

함수를 선언했을 때 `paramName: value` 사용하여 named parameters를 사용할 수 있다.

```dart
enableFlags(bold: true, hidden: false);
```

`{ param1, param2, ... }` 를 사용하여 named parameters를 받는 것을 알릴 수 있다.

```dart
void enableFlags({bool? bold, bool? hidden})
```

#### Optional Positional parameters

 [ ] 을 사용하여 optional positional parameters 선언 가능

```dart
String say(String from, String msg, [String? device]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  return result;
}
```

#### Default parameter values

`=` 을 사용하여 default values, named, positional parameters 선언 가능

```dart
void enableFlags({bool bold = false, bool hidden = false})
```

positional parameters에서 default values 선언하기

```dart
String say(String from, String msg,
    [String device = 'carrier pigeon']) {
  var result = '$from says $msg with a $device';
  return result;
}

assert(say('Bob', 'Howdy') ==
    'Bob says Howdy with a carrier pigeon');
```

map이나 lists을 default value로 전달 가능하다.

```dart
void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {
      'first': 'paper',
      'second': 'cotton',
      'third': 'leather'
    }}) {
  print('list:  $list');
  print('gifts: $gifts');
}
```

#### Anonymous functions

`nameless function(lambda or closure)`을 만들 수 있다.

```dart
const list = ['apples', 'bananas', 'oranges'];
list.forEach((item) {
  print('${list.indexOf(item)}: $item');
});

>>> 0: apples
>>> 1: bananas
>>> 2: oranges
```

#### Lexical scope

Dart는 Lexical scope를 갖는다. 각 코드 블록은 위에서 정의한 모든 변수에 접근할 수 있다.

```dart
bool topLevel = true;

void main() {
  var insideMain = true;
               
  void myFunction() {
    var insideFunction = true;

    void nestedFunction() {
      var insideNestedFunction = true;

      assert(topLevel);
      assert(insideMain);
      assert(insideFunction);
      assert(insideNestedFunction);
    }
  }
}
```

#### Lexical closures

함수가 원래 범위의 밖에서도 사용되는 경우 lexical scope 변수에 접근 가능한 함수 객체

```dart
/// Returns a function that adds [addBy] to the
/// function's argument.
Function makeAdder(int addBy) {
  return (int i) => addBy + i;
}

void main() {
  // Create a function that adds 2.
  var add2 = makeAdder(2);

  // Create a function that adds 4.
  var add4 = makeAdder(4);

  assert(add2(3) == 5);
  assert(add4(3) == 7);
}
```