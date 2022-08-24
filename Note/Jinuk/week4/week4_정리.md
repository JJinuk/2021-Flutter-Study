### Widget

1. 독립적으로 실행되는 작은 프로그램
2. 주로 바탕화면 등에서 날씨, 뉴스, 생활정보 등을 보여줌
3. 그래픽이나 데이터 요소를 처리하는 함수를 갖고 있음

### Widget in Flutter

1. UI를 만들고 구성하는 모든 기본 단위 요소
2. 눈에 보이지 않는 요소들까지 위젯(레이아웃 같이)
3. Everthing is a widget

### Types of Widgets

1. Stateless Widget
    1. 상태가 없는 정적인 위젯
2. Stateful Widget
    1. 계속 움직임이나 변화가 있는 위젯
3. Inherited Widget

### Stateless와 Stateful의 일반적인 의미

1. Stateful ⇒ Value 값을 지속적으로 추적 보존
2. Stateless ⇒ 이전 상호작용의 어떠한 값도 저장하지 않음

### Stateless Widgets

1. 앱 화면 상에 존재만 할 뿐 아무것도 하지 않음
2. 어떠한 실시간 데이터도 저장하지 않음
3. 어떤 변화(모양, 상태)를 유발시키는 value값을 가지지 않음

### Stateful Widgets

1. 사용자의 interaction에 따라서 모양이 바뀜
    1. check box, radio button
2. 데이터를 받게 되었을 때 모양이 바뀜

### Flutter Widget tree

1. Widget들은 tree 구조로 정리될 수 있음
2. 한 Widget내에 얼마든지 다른 widget들이 포함될 수 있음 
3. Widget은 부모 위젯과 자식 위젯으로 구성
4. Parent widget을 widget container라고 부르기도 함

---

android folder ⇒ 안드로이드 배포를 위한 폴더

ios folder ⇒ iOS 배포를 위한 폴더

material design ⇒ 모바일, PC에서 일관된 디자인을 적용하기 위해 구글이 제공하는 가이드라인

```dart
void main() // 앱의 시작점
```

fat arrow ⇒ 코딩을 간결하게 하기 위한 기호

```dart
void main() => runApp(MyApp())  // 위젯트리에서 최상위 위젯, 스크린 레이아웃에서 최초로 빌드
```

### 클래스 명과 함수 명

main(), runApp() : 함수의 이름은 보통 첫 글자가 소문자

MyApp() : 클래스의 명은 보통 첫 글자가 대문자

⇒ Camel cass

---

Swatch: 색 견본

- 특정 색의 음영들을 기본 색으로 지정하여 사용하겠다는 의미

home: 

- 앱이 정상적으로 실행되었을 때 가장 먼저 화면에 보여주는 경로

scaffold(): 

- 발판을 만들어주다.
- 앱 화면에 다양한 요소를 배치하고 그릴 수 있도록 도와주는 빈 도화지 역할
- scffold()를 넣어줘도 된다.

<img width="466" alt="스크린샷 2021-10-26 오후 9 11 09" src="https://user-images.githubusercontent.com/74299463/138883450-8e93cc99-92ce-4b35-b90a-68b7104b9818.png">


1. title: ' '
    
    앱을 총 칭하는 이름
    
2. appBar widget title은 화면 내의 출력되는 타이틀

body: 

- 앱 화면을 만드는 시작점인 만큼 scaffold에서 가장 중요한 요소

```dart
body: Center(
        child: Column(    // 위젯 내 모든 요소를 세로로 배치
          children[]      // [] 배열을 의미, 세로로 정렬될 위젯을 넣는다
        ),
```
