### 변수선언

- 한 번 var로 선언한 후 다른 타입의 값을 넣으려고 하면 에러가 발생한다.
```c
var name = "Hongjin";
name = 10;
//오류발생
```

- 하나의 변수에 여러타입의 변경이 필요할 경우 dynamic을 사용한다.
```c
dynamic age = "24";
age = 24;
```
### 접근 지정자

- 변수명 앞에 _ 기호를 붙이면 java에서 private과 같은 기능을 한다. private변수에 접근하려면 getter와 setter 를 작성해야한다.
```c
class Person{
String name;
int _age;

int get age =>_age;
set age(int value) => _age = value;
}
void main(){
var person = Person();
person.age = 20;
print(person.age); // age = 20
}
```

### final과 const
공통점
- 값을 한 번만 선언 할 수 있다.
```c
void main(){
  const String name = "ABC";
  final int age = 30;
  
  name = "A"; // 오류
  age = 31; // 오류
}

```

차이점
- const은 런타임에서 정의되는 값을 설정할 수 없다.
- final은 런타임에서 정의되는 값을 설정할 수 있다.
```c
final DateTime now = DateTime.now();
const DateTime now = DateTime.now(); //오류
```

### Collection
- List: 같은 타입의 자료를 여러 개 담을 수 있고 특정 인덱스로 접근할 수 있다.
```c
  // List<String> items = ['짜장', '라면', '볶음밥']; 
  // 일반적으로 var로 선언합니다.
  // var items = ['짜장', '라면', '볶음밥']; 
  void main(){
    items[0] = '떡볶이';
    for( var i=0; i < items.length; i++){
    print(items[i]); // 떢볶이, 라면, 볶음밥
      }
  }
```
- Map: key와 value의 쌍으로 저장할 수 있고, 키를 통해 값을 얻을 수 있다.
```c
var cityMap = {
  '한국': '부산',
  '일본': '도쿄',
  '중국': '북경',
};

void main(){
  cityMap['한국'] = '서울';

  print(cityMap.length);  // 3
  print(cityMap['중국']); // 북경
  print(cityMap['미국']); // null

  cityMap['미국'] = '워싱턴'; // 새로운 값 추가
  print(cityMap['미국']); // 워싱턴
}
```

- Set: 중복이 허용되지 않고, 찾는 값이 있는지 없는지 판단하고자 할 때 사용한다.

```c
var citySet = {'서울','수원','오산','부산'};

void main(){
  citySet.add('안양');    // 추가
  citySet.remove('수원'); // 삭제

  print(citySet.contains('서울')); // true
  print(citySet.contains('도쿄')); // false
}
```
