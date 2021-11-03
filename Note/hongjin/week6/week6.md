## app bar 
app bar icon button
- leading: 아이콘 버튼이나 간단한 위젯을 왼쪽에 배치
- actions: 복수의 아이콘 버튼 등을 오른쪽에 배치
- onPressed: 함수의 형태로 일반 버튼이나 아이콘 버튼을 터치했을 때 일어나는 이벤트를 정의하는 곳

```c
leading: IconButton(
icon: Icon(Icons.menu),
onPressed: (){
  print('menu button is clicked');},),
```

## Drawer
ListView안에는 ListTile이 여러개 모여있다. 또한 ListTile안에는 여러개의 요소들을 넣을 수 있다.
```c
drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/babanto.png'),
                backgroundColor: Colors.white,
              ),
              otherAccountsPictures: [
                CircleAvatar(
                  backgroundImage: AssetImage('assets/dog.png'),
                  backgroundColor: Colors.white,
                ),
                // CircleAvatar(
                //   backgroundImage: AssetImage('assets/dog.png'),
                //   backgroundColor: Colors.white,
                // ),
              ],
              accountName: Text('BBANTO'),
              accountEmail: Text('bbanto@bbanto.com'),
              onDetailsPressed: () {  //화살표 클릭 시 세부사항이 나온다.
                print('arrow is clicked');
              },
              decoration: BoxDecoration( //  UserAccountsDrawerHeader부분을 꾸며주는 역할
                  color: Colors.red[200],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0))),
            ),
            ListTile(   // UserAccountsDrawerHeader의 아래부분에 타일이 생긴다
              leading: Icon(
                Icons.home,
                color: Colors.grey[850],
              ),
              title: Text('home'),
              onTap: () {
                print('Home is clicked');
              },
              trailing: Icon(Icons.add),  // ListTile의 끝부분에 아이콘을 추가한다
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
                color: Colors.grey[850],
              ),
              title: Text('Setting'),
              onTap: () {
                print('Setting is clicked');
              },
              trailing: Icon(Icons.add),
            ),
            ListTile(
              leading: Icon(
                Icons.question_answer,
                color: Colors.grey[850],
              ),
              title: Text('Q&A'),
              onTap: () {
                print('Q&A is clicked');
              },
              trailing: Icon(Icons.add),
            ),
          ],
        ),
      ),
```

## BulidContext
- widget tree에서 현재 widget의 위치를 알 수 있는 정보
- 모든 위젯은 build method를 갖고있다
- stateless위젯이나 state 빌드 메서드에 의해서 리턴 된 위젯의 부모가 된다
<img width="295" alt="bulidcontext" src="https://user-images.githubusercontent.com/29851704/140065141-eef4eadd-4bbc-45a2-9d93-fbbe0e3268a1.PNG">

## BuildContext and SnackBar
<img width="341" alt="snack" src="https://user-images.githubusercontent.com/29851704/140065534-f6a4e076-fd22-427d-96f5-ad90d5435bc4.PNG">
위 내용의 context는 myPage의 context이기 때문에 오류를 발생시킨다

이를 해결하기 위해서는 scaffold.of(context)가 Scaffold보다 밑에있는 위젯에서의 context를 사용할수 있도록하면 된다.
<img width="353" alt="snack1" src="https://user-images.githubusercontent.com/29851704/140066521-b209a268-d322-4d10-a308-b37b5f501bda.PNG">
이렇게 하면 Bulider의 context를 사용하게되서 Scaffold위젯을 찾을 수 있다.
