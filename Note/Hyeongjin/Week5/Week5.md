## Week5
### 기본적인 Widget에 대해 학습
```
appBar: AppBar(
        title: Text('Squirtle'),
        centerTitle: true, // 1
        backgroundColor: Colors.blue[400],
        elevation: 0.0, // 2
      ),
```
1) centerTitle : Widget의 가운데 정렬(boulean값을 argument로)
2) elevation : Widget의 높이 효과, elevation: 0.0 -> flat
<br>
<br>

```
Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0), //3
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, //4
          ...
          ...
```
3) EdgeInsets.fromLTRB(Left,Top,Right,Bottom) : 4방향 padding값
4) crossAxisAlignment : Column을 가로 축 기준 정렬, Row를 세로 축 기준 정렬
5) MainAxisAlignment : Column을 세로 축 기준 정렬, Row를 가로 축 기준 정렬
<br>
<br>

```
 Divider(
              height: 60.0,
              color: Colors.white,
              thickness: 0.5,
              endIndent: 30.0,
            ),
```
6) Divider : 기준선 지정
<br>
<br>

```
TextStyle(
    color: Colors.white,
    letterSpacing: 2.0, // 7
),
```
7) letterSpacing : Text의 간격 지정
<br>
<br>

```
SizedBox(
     height: 10.0,
),
```
8) SizedBox : 여백 지정할 때 사용
<br>
<br>

```
Center(
  child: CircleAvatar(
  backgroundImage: AssetImage('assets/squirtle.png'),
  ....
  ),
```
9) AssetImage : 지정 경로의 이미지 사용
- pubspec.yaml 들어가서 assets 찾기
- 주석 처리 비활성화 후 이미지 경로 설정(assets folder)


