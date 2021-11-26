# week 8

## String interpolation

```dart
void main() {
    String name = 'Sean';
    print(name);
    print("Hi $name ??");
}
```

문자열 사이사이에 `$var`를 사용하여 중간에 변수값을 문자로 넣어줄 수 있다.

## Collection/ Generic

```dart
int addNumber(int a, int b) {
    return a + b;
} 

void main() {
    List<dynamic> number = new List();
    
    number.add(2);
    number.add('test');
    number.add(7.4);
    number.add(addNumber(3, 4));
    number.add(true);
    print(number); // [2, test, 7.4, 7, true]
    
    
    List<String> names = List();
    names.addAll(['James', 'John', 'Tom']);
    print(names);
}
```

`Button`

```dart
// TextButton
TextButton(
	onLongPress: (){
        print('text btn');
    },
    child: Text(
        'Text Button',
        style: TextStyle(
            fontSize: 20.0
        ), // TextStyle  
    ), // Text
    style: TextButton.styleFrom(
        primary: Colors.red
    ),
)
    
// ElevatedButton
ElevatedButton(
    onPressed: () {
        print('Elevated btn');
    },
    child: Text('Elevated button'),
    style: ElevatedButton.styleFrom(
        primary: Colors.orangeAccent,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0)),
    	elevation: 0.0),
)
    
// OutlinedButton
OutlinedButton(
    onPressed: () {
        print('Outlined button');
    },
    child: Text('Outlined button'),
    style: OutlinedButton.styleFrom(
        primary: Colors.green,
        side: BorderSide(
            color: Colors.black87,
            width: 2.0
        )
    ),
)

// TextButton
TextButton.icon(
    onPressed: () {
        print('Icon button');
    },
    icon: Icon(
        Icons.home,
        size: 30.0,
        color: Colors.black87,
    ), // Icon
    label: Text('Go home'),
    style: TextButton.styleFrom(
        primary: Colors.purple
    ),
)
```

`Button Bar`

```dart
ButtonBar(
    alignment: MainAxisAlignment.Center,
    buttonPadding: EdgeInsets.all(20),
    children: [
        TextButton(
            onPressed: () {},
            child: Text("TextButton"),
        ), // TextButton
        ElevatedButton(
            onPressed() {},
            child: Text("ElevatedButton"),
        ), // ElevatedButton
    ],
)
```

