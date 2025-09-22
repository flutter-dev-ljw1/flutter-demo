import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("叠层组件stack,align,positioned"),
          centerTitle: true,
          toolbarHeight: 50,
          backgroundColor: Colors.green,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          height: 40,
          child: Container(
            alignment: Alignment.center,
            color: Colors.black54,
            child: Text("二级标题", style: TextStyle(color: Colors.white)),
          ),
        ),
        ListView(
          padding: EdgeInsets.only(top: 55),
          children: [
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
            ListTile(title: Text("这是一个标题")),
          ],
        ),
      ],
    );
  }
}
