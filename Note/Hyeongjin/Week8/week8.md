## Week8
### Collection and Generic
1. String interpolation
- 보간법 이라고 함
- $a님 반갑습니다 => 홍길동님 반갑습니다
- $b님 반갑습니다 => 김형진님 반갑습니다

2. Collection
- 데이터들을 모아서 가지고 있는 자료구조

3. Generic
- Collection이 가지고 있는 데이터들의 데이터 타입을 지정

### Flutter 2.0
#### ScaffoldMessenger
- scaffold.of(context) -> FlatButton -> Center -> Scaffold 
- Route시 scaffold build context가 바뀌어 snackbar가 제대로 작동하지 않음
- ScaffoldMessenger를 통해 Snackbar를 관리하여 어디서든 Snackbar를 수신할 수 있도록 함

#### Buttons
- RaisedButton -> ElevatedButton
- FlatButton -> TextButton
- OutlineButton -> Outlined Button
