/* 3-1. ボタン */

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Simple App",
      home: Scaffold(
        appBar: AppBar(
          title: Text("カウンター"),
        ),
        body: Center(
          child: MyForm(),
        ),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  int _count = 0;

  void _increment() {
    setState(() {
      // 状態を保持する変数を変更する処理は、setState内に記述する
      _count++;
    });
  }

  void _decrement() {
    setState(() {
      // 状態を保持する変数を変更する処理は、setState内に記述する
      _count--;
    });
  }

  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          "$_count",
          style: TextStyle(
            color: Colors.blueAccent,
            fontSize: 30.0,
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          width: 200.0, // ボタンの幅を指定
          height: 50.0, // ボタンの高さを指定
          child: TextButton(
            onPressed: _increment,
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.blue,
              onSurface: Colors.grey,
            ),
            child: Text(
              "いいね!",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        ),
        SizedBox(height: 20.0),
        Container(
          width: 200.0, // ボタンの幅を指定
          height: 50.0, // ボタンの高さを指定
          child: TextButton(
            onPressed: _decrement,
            style: TextButton.styleFrom(
              primary: Colors.white,
              backgroundColor: Colors.red,
              onSurface: Colors.grey,
            ),
            child: Text(
              "やだね",
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
          ),
        )
      ],
    ));
  }
}
