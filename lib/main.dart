import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StupidState(),
    );
  }
}

class StupidState extends StatefulWidget {
  @override
  Counter createState() => Counter();
}

class Counter extends State<StupidState> {
  int count = 0;

  void add() {
    setState(() {
      count += 1;
    });
  }

  void minus() {
    setState(() {
      count -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    //어플리케이션의 메인파트 여기서 모든 옵션을 볼 수 있음
    return Scaffold(
        // title과 +,- 버튼 두개 필요한것은 column
        // column 안에 children, children은 위젯의 배열
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Center(
          child: Text(
            "the number is",
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 18),
          ),
        ),
        //마진과 패딩 등등 다 위젯이다
        Container(
          margin: EdgeInsets.symmetric(vertical: 15),
          child: Center(
            child: Text(
              '$count',
              style: TextStyle(fontSize: 28),
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            RaisedButton(child: Text("Add"), onPressed: add),
            RaisedButton(child: Text("Minus"), onPressed: minus)
          ],
        )
      ],
    ));
  }
}
