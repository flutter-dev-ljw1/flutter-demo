import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("这是标题")),
        body: Center(child: Column(children: [MyApp(), MyButton()])),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.red,
        border: Border.all(color: Colors.green, width: 20),
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.blue,
            offset: Offset(20, 20),
            blurRadius: 15.0,
          ),
        ],
        gradient: LinearGradient(colors: [Colors.red, Colors.orange]),
      ),
      // margin: EdgeInsets.fromLTRB(100, 150, 0, 0),
      // padding: EdgeInsets.fromLTRB(50, 0, 0, 0),
      // transform: Matrix4.rotationZ(0.2),
      child: const Text(
        "你好flutter",
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: 240,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.blue,
        // border: Border.all(
        //   color: Colors.orange,
        //   width: 5,
        //   style: BorderStyle.solid,
        // ),
        borderRadius: BorderRadius.circular(20),
      ),
      margin: EdgeInsets.all(50),
      child: Text("按钮", style: TextStyle(color: Colors.white, fontSize: 25)),
    );
  }
}
