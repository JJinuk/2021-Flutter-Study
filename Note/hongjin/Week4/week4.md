# widget

-  독립적으로 실행되는 작은 프로그램
- 주로 바탕화면 등에서 날씨나 뉴스, 생활정보 등을 보여줌
-  그래픽이나 데이터 요소를 처리하는 함수를 가지고 있음

# What is Widget in flutter?

- UI를 만들고 구성하는 모든 기본 단위 요소
- 눈에 보이지 않는 요소들까지 위젯
- 모든것은 위젯이다.

# Stateless Widgets

- 스크린상에 존재만 할 뿐 아무것도 하지 않음
- 어떠한 실시간 데이터도 저장하지 않음
- 어떤 변화(모양, 상태)를 유발시키는 value값을 가지지 않음

# Stateful Widgets

- 사용자의 interaction에 따라서 모양이 바뀜
- 데이터를 받게 되었을 때 모양이 바뀜

# Flutter Widget tree

- Widget들은 tree 구조로 정리될 수 있음
- 한 Widget내에 얼마든지 다른 widget들이 포함될 수 있음
- Widget은 부모 위젯과 자식 위젯으로 구성
- Parent Widget을 widget container라고 부르기도 함

<img width="243" alt="캡처" src="https://user-images.githubusercontent.com/29851704/139267852-c1f71907-c8a8-4098-861d-290d83c1ca6a.PNG">
