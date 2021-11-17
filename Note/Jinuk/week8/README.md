# week8

## Collection and Generic

Collection: 데이터들을 모아서 가지고 있는 자료구조
Generic: Collection이 가지고 있는 데이터들의 데이터 타입을 지정(코드의 안정성과 재사용성을 높이기 위해)

1. String interpolation
   - $a님 반갑습니다 => 홍길동님 반갑습니다.
   - $b님 반갑습니다 => 제이크님 반갑습니다.
   - 당신의 점수는 $score이며 당신의 레벨은 $level입니다.
  
```dart
void main() {
  String name = 'Sean';
  print(name);
  
  print("Hi, $name, what's up?");
}
```

2. Colleciton / Generic

```dart
  List<dynamic> number = new List();

```
- <dynamic>말고 Collection / Generic 타입을 왜 지정해줘야 할까


```dart
class Circle{}
class Square{}

class SquareSlot {
  insert (Square squareSlot) {
  }
}

class CircleSlot {
  insert (Circle circleSlot) {
  }
}

void main() {
  var circleSlot = new CircleSlot();
  
  circleSlot.insert(new Circle());
  
  var squareSlot = new SquareSlot();
  
  squareSlot.insert(new Circle());
  
} // Generic 적용 전 

void main() {
  var circleSlot = new Slot<Circle>();
  circleSlot.insert(new Circle());
  
  var squareSlot = new Slot<Square>();
  squareSlot.insert(new Square());
  
  var triangleSlot = new Slot<Triangle>();
  triangleSlot.insert(new Triangle());
}

class Circle{}
class Square{}
class Triangle{}

class Slot<T>{
  insert (T Shape) {
    
  }
} // Generic 적용 후

```