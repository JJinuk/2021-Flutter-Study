## 설치 방법

### SDK를 통한 설치

1. flutter SDK 설치
    <img width="757" alt="1" src="https://user-images.githubusercontent.com/74299463/135407271-4351a4d9-5b3c-46bb-adf7-7ea3638ebfaa.png">

2. 원하는 위치에 .zip파일 압축을 해제한다.
    <img width="900" alt="2" src="https://user-images.githubusercontent.com/74299463/135407295-0f889c19-7c21-4c3d-97a4-a3186b503d44.png">

3. Flutter tool을 path에 추가한다. 
    <img width="900" alt="3" src="https://user-images.githubusercontent.com/74299463/135407321-8d73100f-2904-453d-bd2d-d9b84054b48f.png">    

### Github에서 직접 다운로드

1. 터미널에서 아래의 명령어를 입력한다.
    
    ```
    git clone [https://github.com/flutter/flutter.git](https://github.com/flutter/flutter.git) -b stable
    ```
    <img width="921" alt="4" src="https://user-images.githubusercontent.com/74299463/135407348-bd3b2230-9754-4e1b-9a7f-59cfa7125dd0.png">

    
2. 필요한 바이너리 설치
    
    ```
    flutter precache
    ```
    <img width="921" alt="5" src="https://user-images.githubusercontent.com/74299463/135407357-5a938503-df32-4357-83ad-dd9373651aa0.png">

    

### Flutter  doctor 실행

flutter 설정을 완료하는 데 필요한 플랫폼이 있는지 확인하기 위해 아래 명령어 실행(자세한 출력은 flutter -v doctor)

<img width="924" alt="6" src="https://user-images.githubusercontent.com/74299463/135407371-1d4aaf07-438f-42f0-8d3f-9cf0d571d078.png">
<img width="682" alt="7" src="https://user-images.githubusercontent.com/74299463/135407384-5c869f06-2693-4ed7-a468-84b09af0e96d.png">

### Flutter SDK Path 업데이트

1. 터미널(iTrem)을 켜서 **vim ~/.zshrc** 입력
2. zshrc 끝에  **export PATH="$PATH:설치 경로/flutter/bin"** 추가
    <img width="894" alt="8" src="https://user-images.githubusercontent.com/74299463/135407393-852b9a90-aeef-4d92-9cd4-3fb97d8ffc55.png">

    
3. **source ~/.zshrc** (새로고침과 비슷)
4. **echo $PATH** 입력하여 디렉토리가 현재 PATH에 있는지 확인, 경로가 나오면 성공
    <img width="894" alt="9" src="https://user-images.githubusercontent.com/74299463/135407404-3bf0321b-c28f-47f0-b5f2-6dccb2c9da65.png">

    
5. 마지막으로 **which flutter** 쳐서 flutter를 사용할 수 있는지 확인
    <img width="894" alt="10" src="https://user-images.githubusercontent.com/74299463/135407411-95536fea-e022-444a-bd2e-f3441ee8ac2d.png">

## iOS 설정

### Xcode 설치

1. 최신 버전의 Xcode 설치
2. 새로 설치된 Xcode 버전을 사용하도록 구성 
    
    <img width="894" alt="11" src="https://user-images.githubusercontent.com/74299463/135407439-2ee0cfa2-1cba-4e36-99f3-203fa5b28b20.png">


### iOS Simulator 설정

1. Mac에서 Spotlight 또는 다음 명령어를 사용하여 시뮬레이터 찾기 
    <img width="894" alt="12" src="https://user-images.githubusercontent.com/74299463/135407444-300014d9-8e21-4bcb-969a-d5365124e4ac.png">
    
2. 시뮬레이터가 64-bit의 장치(iPhone 5s or 그 이후 모델)을 사용하도록  **Hardware > Device** 메뉴를 통해 확인
3. 자신의 개발 환경에 맞게 시뮬레이터 스케일 변경

### 간단한 Flutter 앱 생성 및 실행

1. 아래의 명령어를 실행하여 새 Flutter 앱을 만든다
    
    <img width="894" alt="13" src="https://user-images.githubusercontent.com/74299463/135407456-adbfdca0-8672-48e9-b283-6b33875466fb.png">
    
2. 새 Flutter앱이 포함된 my_app 디렉토리가 생성된다
    
    <img width="894" alt="14" src="https://user-images.githubusercontent.com/74299463/135407479-1f2de731-5769-4578-b9a8-9074dc52a002.png">
    
3. 시뮬레이터에서 앱을 시작하려면 실행 중인지 확인하고 아래의 명령어를 입력하여 실행한다.
    
    <img width="894" alt="15" src="https://user-images.githubusercontent.com/74299463/135407503-e0b87826-a147-413e-b07e-4f9bf79ab0bb.png">
    
### 출
    
:label: https://flutter.dev/docs/get-started/install