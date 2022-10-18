import 'package:flutter/material.dart';

// Stateful Widget으로 클래스 구성
class screen_home extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<screen_home>{
  // 기기 크기와 상관 없이 위젯의 크기나 비율이 일정하게 들어오도록 반응형 UI로 제작, 이를 위해 현재 기기의 여러 상태 정보를 알 수 있는 MediaQuery 사용
  @override
  Widget build(BuildContext context) {
    // MediaQuery를 사용함으로써 이후 높이, 패딩, 폰트 사이즈에 대해 상수를 쓰지 않 width와 height에 곱하기를 한 값을 활용함

    Size screenSize = MediaQuery.of(context).size; // Size 타입의 변수 생성
    double width = screenSize.width; // 너비 변수
    double height = screenSize.height; // 높이 변수

    // SafeArea에 Scaffold를 넣는 형태로 화면을 구성해 return
    // SafeArea는 기기의 상단 노트바 부분, 하단 영역을 침범하지 않는 안전한 영역을 잡아주는 위젯
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('My Quiz App'),
          backgroundColor: Colors.deepPurple,
          leading: Container(),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(child: Image.asset(
              'resources/images/quiz.jpg',
              width: width * 0.8,
            ),)
          ],
        ),
      ),
    );
  }
}