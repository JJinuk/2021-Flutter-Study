# Dart




### 주석

- `//` : 한 줄 주석
- `/**` ~ `**/` : 여러 줄 주석
- `///`  : 데이터 정보 같이 출력



### 기본 자료형

```dart
void main() { 
    var a=10;		// int type
    var b=3.5;		// double type
    var str='Hello';	// String type
    var isTrue=true;	// bool type
    
    dynamic c=10;
    dynamic d='string';
    
    int n=10;
    double e=9.9;
    num f=10;		// double f=10 <-x  ,  double f=10 as double  <-o
    
    final g=10;
    const h=20;
    
    List<String> items = ['a', 'b', 'c'];
    var items = [1, 2, 3];		// <- 타입 추론이 되기 때문에 위와 동일하게 생성 가능
    var items2 = [...item, 4, 5];	// [1, 2, 3, 4, 5]

    var itemSet = {1, 2, 3};
    var itemMap = {'key1:1', 'key2:2','key3:3'};
}
```

- 일반적으로는 변수 자료형 사용
- `String` 은 `"`, `'` 둘 다 사용가능, 작은따옴표 표준
- `dymanic` 사용 시 모든 자료형 사용 가능 (함수 인자 등에 사용)
- `num`은 `int`, `double` 둘 다 포함
      - `double` 변수에 `int`형 자료 넣을 시 `as double`(타입캐스팅)을 해줘야 함
      - `num` 사용 시 타입캐스팅 없이 사용 가능
- `var` : 타입을 명시하지 않고 타입을 초기화 값에 따라서 자동으로 데이터 타입을 정해줌
- `final`, `const` - 둘 다 변경x
  - `final` : 동적으로 메모리에 할당
  - `const` : 컨파일 타임에 상태, 이미 메모리에 저장됨(미리 값을 정해놓고 여러군데 사용 시 주로 사용)
  - `var`와 함께 사용 불가
- List, Set, Map



### parameter

```dart
void main() { 
	something(name:'홍길동')			// 'shift+space' 사용
}
void something({String name}) {
    // 함수에서 특정 인자를 받아와야할 때 {}옵션을 사용해 지정 가능
}
----------------------------------------------------------------------------------
void main() { 
	something('홍길동', age: 10)		// name만 필수, 나머지는 옵션일 때
}
void something(String name, {int age}) { 
    // name 제외, 나머지 옵션 처리
}
void something(String name, {int age=10}) { 
    // age<-default값
}
void something(String name, {@require int age}) { 
    // age를 반드시 받아와야 할 때 @required 사용
}
```



### 데이터 타입

```dart
var a = 10;
var b = 5.5;
if (a is int){}
if (b is! int){}

b = a as double;

var name=null;			  // name선언(null 생략 가능)
print(name);			  // null
print(name ?? '널');		 // '널' <- 지정한 기본값 출력
print(name ? '널');		 // 실행 안 됨 <- null이 아닐 때만 실행

```

- 타입 체크 `is`
  - `is` : 같은 타입이면 `true`반환, 다른 타입이면 `false` 반환
  - `is!` : 같은 타입이면 `false` 반환, 다른 타입이면 `true` 반환
  - `var` 타입으로 선언한 변수는 내부적으로 해당하는 기본 데이터 타입으로 인식
  - `is` 뒤에 `var`타입은 사용 불가능
- 타입캐스팅 `as`
  - 데이터 타입의 서로 관계가 있으면 상위 타입으로 변환 가능
  - '자료형 변환', '형 변환', '타입캐스팅', '데이터 타입변환' 등으로 불림
  - 부모 타입의 객체를 자식 타입의 개체로 형변환 할 때 사용(다운캐스팅)
  - `is` 키워드를 이용해서 객체가 확실한지 확인 후 `as` 사용 권장
- 널 인식 연산자(null 체크&처리) `??`
  -  null일 때 기본값 지정
  - 좌항이 null이 아니면 좌항 값 리턴, null이면 우항 값 리턴
  - `좌항 ?? 우항` 으로 사용 가능
- 조건적 멤버 접근 연산자(null 체크) `?`
  -  null이 아닐 때만 실행
  - 좌항이 null이면 null 리턴, 아니면 우항 값 리턴
  - `좌항?.우항`으로 사용 가능



### class

```dart
void main() {
    var person = Person('홍길동', 10);	// dart에서는 new 생략가능
    print(person.name);
}
class Person {
    String name;
    int age;
    
    Person(this.name, this.age);	// 생성자
}
class Person2 {
    String name;	// <- public
    int _age;		// <- private(외부에서 접근x), getter/setter 생성 가능
    
    // 마우스 우클릭 : 'Generate'->'Getter and Setter' => 기본 생성(거의 사용x)
    // 일반적인 형태의 메서드
    String get name {
        '제 이름은 $_name';
    }
    // 한 줄 형태 : 람다식
     String get name => '제 이름은 $_name';
}
```



### 자바에 없는 기능

```dart
void main() {
    ver person=Person()
        ..setName('홍길동')	// 이런 식으로 사용 가능
        ..setAge(10);
}
class Person {
    String name;
    int age;
    
    void setName(String name){
        this.name=name;
    }
    void setAge(int age){
        this.age=age;
    }
}
class Employee implements Person {
    // implements로 인터페이스처럼 사용 가능 (dart에는 인터페이스 문법 없음)
    // 전부 @override 해야함(지저분해지는 케이스는 mixin 사용)
}
class Employee2 with Person {
    // mixin 기능 => @override 선택적으로 가능
}
```



### Flutter 사용 시 자주 사용됨

- `Future`
  - 비동기 처리
  - `Future` 타입으로 리턴을 받는 형태의 메소드
  - 지금은 없지만 미래에 요청한 데이터 혹은 에러가 담길 그릇
  - 비동기로 실행

```dart
Future networkRequest() {
    return Future.delayed(Duration(seconds: 3));
}
```

- `async` / `await`
  - 비동기 처리, `Future`를 조금 더 용이하게 다루기 위한 키워드

    > 1. `await` 키워드를 사용한 함수는 무조건 `async` 함수여야 함
    > 2. `async` 함수는 무조건 `Future`를 반환해야 함

    > 1. `await`를 만나면 함수를 잠시 멈추고 함수를 호출한 곳에 `Future`를 return
    > 2. `await`가 붙은 동작이 완료되기 전까지 함수를 더 이상 진행하지 x
    > 3. return을 통해 1번에서 주었던 `Future`에서 return 값이 나오게 함

```dart
void main() {
    print('시작');
    networkRequest();
    print('끝');
}
Future networkRequest() async {		// 비동기로 요청이 끝나는 메소드
    print('네트워크 요청 시작');
    await Future.delayed(Duration(seconds: 3));
    print('네트워크 요청 끝');
}
```



## [Reference]  
[(168) Dart 다트 문법 정리 - YouTube](https://www.youtube.com/watch?v=J_cQyPGyHRI), [Flutter/Dart 에서의 Future, async/await](https://velog.io/@jintak0401/FlutterDart-%EC%97%90%EC%84%9C%EC%9D%98-Future-asyncawait)
