collection: 데이터들을 모아서 가지고 있는 자료구조
Generic: Collection이 가지고 있는 데이터들의 데이터 타입을 지정

fixed-length list: 리스트의 데이터의 개수가 지정한 갯수만큼만 올수 있다. 
ex) var number = new List(5);
growable list: 갯수의 제한이 없다.
ex) var number = new List();

generic 코드 사용
```c
void main(){
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
  insert(T shape){
    
  }
}
```

generic 코드 사용 x
```c
class Circle{}
class Square{}

class SquareSlot{
  insert(Square squareSlot){
    
  }
}

class CircleSlot{
  insert(Circle circleSlot){
    
  }
}

void main(){
  var circleSlot = new CircleSlot();
  circleSlot.insert(new Circle());
  
  var squareSlot = new SquareSlot();
  squareSlot.insert(new Square());
}
```
