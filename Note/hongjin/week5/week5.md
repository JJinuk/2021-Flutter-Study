appBar의 title중앙으로 이동
```c
centerTitle: true
```
appBar의 background색상 변경
```c
backgroundColor: Colors.redAccent
```
appBar가 떠있는 효과 제거
```c
elevation: 0.0
```

padding값 적용
```c
body: Padding( padding: EdgeInsets.fromLTRB(30.0,40.0,0.0,0.0))
```
축 정렬(중앙)
```c
mainAxisAlignment: MainAxisAlignment.center
```
Text 디자인
```c
Text('NAME',
style: TextStyle(
  color:Colors.white,
  letterSpacing: 2.0,  //철자간의 간격
  fontSize: 24.0,
  fontWeight: FontWeight.bold //글자의 굵기를 지정
 ),)
```

text와의 간격
```c
SizedBox(
  height:10.0 // 높이간격
  width: 10.0// 좌우 간격
 )
```
왼쪽 시작점 정렬
```c
//Column내부에서
crossAxisAlignment: CrossAxisAlignment.start
```
Icon삽입
```c
Icon(Icons.check_circlec_outline)
```

이미지 삽입
```c
//pubspec.yaml으로 이동 후 assets: 속성에 주석 풀고 경로 설정
assets/bbanto.png
assets/flying.gif
// maindart로 이동
CircleAvatar(
  backgroundImage: AssetImage('assets/flying.gif'),
  radius: 60.0 // 크기 설정
  )
```

분리선 만들기
```c
Divider(
height: 60.0, // 
color: Colors.grey[850],
thichness: 0.5,     //선의 두께 설정
endIndent: 30.0    // 끝에서 어느정도 떨어져야할지 정해주는
)
```
