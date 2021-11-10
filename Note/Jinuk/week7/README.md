# week7

### Container Widget

- 컨테이너는 child를 가지게 되면 그 child의 크기로 줄어든다.
- 컨테이너 위젯 내에서는 컨테이너의 크기 지정 가능 

```dart
EdgeInsets.symmetric()      // 위,아래,좌,우 간격을 편하게 조절하기 위해 
```
- margin: 스크린의 가장자리에서 일정 간격을 갖게 할 때 사용
- padding: 컨테이너가 포함하고 있는 요소가 컨테이너의 가장자리에서 일정 간격을 갖게 할때 사용
- Only one child: 컨테이너는 오직 하나만의 child를 가짐