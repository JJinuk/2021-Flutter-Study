## App bar icon button

- leading: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치할 때
- actions: 복수의 아이콘 버튼 등을 오른쪽에 배치할 때
- onPressed: 함수 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의하는 곳


## 21.11.04
### Drawer 메뉴 만들기
- List: 한 줄만 보여주는 것이 아닌 여러 줄로 된 정보를 보여준다.
- ListTile: 리스트 한 줄씩
  - Icon
  - Text
  - onTap: gestureDetector, InkWell
    - onPressed:  주로 버튼

### BuildContext
- widget tree에서 현재 widget의 위치를 알 수 있는 정보
- bulid 함수는 Scaffold 위젯을 리턴, 위젯 트리 상에서 어디에 위치하고 있는지 정보를 담고 있는 context를 넣어 리턴해준다. 

### Scaffold.of(context) method
- 현재 주어진 context에서 위로 올라가면서 가장 가까운 Scaffold를 찾아서 반환하라.
- Something.of(context)
- Theme.of(context)

### Snack bar and Toasd message

