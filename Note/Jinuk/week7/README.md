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

### Coulumn Widget, Row Widget
- mainAxisSize: MainAxisSize.min,

```dart
body: SafeArea(
            child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
          ],
        )));
  }
```
<img width="516" alt="MainAxisSize min" src="https://user-images.githubusercontent.com/74299463/141254683-626caa74-9d52-423f-a5f3-155924c5c833.png">

- mainAxisAlignment: MainAxisAlignment.center,
```dart
body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
          ],
        )));
  }
```
<img width="516" alt="Center" src="https://user-images.githubusercontent.com/74299463/141254733-add066a7-2029-4f9a-aa46-8f1f73f06041.png">

- verticalDirection: VerticalDirection.up,
```dart
body: SafeArea(
            child: Column(
          verticalDirection: VerticalDirection.up,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
          ],
        )));
  }
```
<img width="516" alt="up" src="https://user-images.githubusercontent.com/74299463/141254814-95fd013b-622b-4618-a9ec-6d2a3b46d596.png">

- verticalDirection: VerticalDirection.down,
```dart
body: SafeArea(
            child: Column(
          verticalDirection: VerticalDirection.down,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
          ],
        )));
  }
```
<img width="472" alt="down" src="https://user-images.githubusercontent.com/74299463/141254839-78f7c2c3-7a35-48ee-a344-19c25f37d75c.png">

- mainAxisAlignment: MainAxisAlignment.spaceAround,
```dart
body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
          ],
        )));
  }
}
```
<img width="472" alt="SpaceAround" src="https://user-images.githubusercontent.com/74299463/141254901-26104b79-123f-4782-8b51-f8c2968d0566.png">

- mainAxisAlignment: MainAxisAlignment.spaceBetween,
```dart
body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
          ],
        )));
  }
}

```
<img width="516" alt="SpaceBetween" src="https://user-images.githubusercontent.com/74299463/141254962-380389e5-3fab-4ac9-82f2-3081851e16e0.png">


- crossAxisAlignment: CrossAxisAlignment.end
```dart
body: SafeArea(
            child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Container(
              width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
          ],
        )))
```
<img width="472" alt="CrossAxisAlignment end" src="https://user-images.githubusercontent.com/74299463/141255010-a4732d51-aa06-4fe0-8d7d-85af60ee5695.png">


- crossAxisAlignment: CrossAxisAlignment.stretch,

```dart
body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              // width: 100,
              height: 100,
              color: Colors.white,
              child: Text('Container 1'),
            ),
            Container(
              // width: 100,
              height: 100,
              color: Colors.blue,
              child: Text('Container 2'),
            ),
            Container(
              // width: 100,
              height: 100,
              color: Colors.red,
              child: Text('Container 3'),
            ),
          ],
        )));
  }
}
```
<img width="516" alt="strech" src="https://user-images.githubusercontent.com/74299463/141255049-3b5c37af-ca8b-4bc8-ba2b-b635a6bbacc4.png">

### Navigator

- Route의 개념
- Navigator의 정의와 push, pop 함수, stack 자료구조 
  - stack 자료구조
    - 밑에서 하나씩 차곡차곡 
    - Push method를 통해 데이터를 쌓을 수 잇다
    - Pop method는 삭제
  - Navigator
    - route는 Navigator가 관리
    - Navigator는 Stack 자료구조 사용
    - 데이터 추가 -> push method
    - 데이터 삭제 -> pop method
- MaterialPageRoute위젯과 context
- 페이지 이동 기능 구현 완성


## 참고 자료
- [Flutter layout 예제](https://medium.com/flutter-community/flutter-layout-cheat-sheet-5363348d037e)
