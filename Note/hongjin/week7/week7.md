## Container widget
- container 내부에 child를 쓰게되면 child의 크기로 줄어든다
- SafeArea(): 화면 밖으로 나가지 않게 하기 위해 경계를 지정
- EdgeInsets.symmetric(): 좌우간격 편하게 조절
- Margin: container가 screen의 가장자리에서 일정간격을 갖게 할 때 사용
- padding: container가 포함하고 있는 요소가 가장자리에서 일정간격을 갖게 할 때 사용
- Only one child: container는 하나의 child만 갖는다.

## Column
```c
verticalDirection: VerticalDirection.down // container를 아래쪽부터 쌓아올리게하는 것
```

```c
MainAxisAlignment: MainAxisAlignment.spaceEvenly // 같은 간격으로 정렬이 된다.
MainAxisAlignment: MainAxisAlignment.spaceEvenly // 상 중 하로 배치가 된다.
```

```c 
crossAxisAlignment: CrossAxisAlignment.end // 가로축 끝점 정렬
crossAxisAlignment: CrossAxisAlignment.stretch // 가로방향으로 채워라
```
## Navigator
- Route: 스마트폰에서 보여주는 하나의 페이지
- Stack 자료구조를 사용
- Route는 MaterialApp widget 아래 child로 생성되어야 한다.

- 페이지 이동

```c
onPressed: () {
            Navigator.push(
                context2, MaterialPageRoute(builder: (_) => SecondPage())); // FirstPage에서 SecondPage로 이동
          },
```

```c
 onPressed: () {
                    Navigator.pop(ctx); SecondPage에서 FirstPage로 이동
                  }),
```
