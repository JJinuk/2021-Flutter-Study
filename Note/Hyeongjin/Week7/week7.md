<<<<<<< HEAD
## Week7
- Container
  - child가 없을 경우 screen 내 가질 수 있는 최대 공간을 차지함
  - child를 갖게되면 child의 크기로 줄어듬

### Widget 정렬
1) 수직 방향 정렬 : up은 밑에서 위로, down 아래에서 위로
```
verticalDirection: VerticalDirection.up
```

2) width를 최대한으로 늘림
```
crossAxisAlignment: CrossAxisAlignment.stretch,
```

3) widget의 간격을 균등하게 배치
```
mainAxisAlignment: MainAxisAlignment.spaceEvenly,
```

### Navigator
1) Route
  - 디스플레이에 보여지는 하나의 액티비티
2) Navigator
  - stack 자료구조 형식으로 pop(), push()를 호출해 화면에 표시 
=======
##Week7
###Container Widget
1) Container Widget
- Container은 child가 없을 경우 최대 공간을 차지한다
- Container가 child를 가지게 되면 child의 크기로 줄어든다

2) Navigator
- 앱 페이지를 stack 자료구조 형태로 관리
- push(), pop()
>>>>>>> 716afb3c8762ef911eda8d8fc518b5d0f85dc7df
