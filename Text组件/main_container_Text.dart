import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("这是一个导航"),
          centerTitle: true,
          toolbarHeight: 60,
          elevation: 8,
          backgroundColor: Colors.limeAccent,
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                // 原来可能溢出的子组件们
                MyContainer(), MyButton(), MyText(),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.pink,
            offset: Offset(40, 40),
            blurRadius: 20,
            blurStyle: BlurStyle.normal,
          ),
          BoxShadow(
            color: Colors.teal,
            offset: Offset(20, 20),
            blurRadius: 20,
            blurStyle: BlurStyle.solid,
          ),
        ],
        color: Colors.green,
        border: Border(
          top: BorderSide(
            color: Colors.purple,
            width: 8,
            style: BorderStyle.solid,
          ),
          bottom: BorderSide(
            color: Colors.purple,
            width: 8,
            style: BorderStyle.solid,
          ),
        ),
        // gradient: LinearGradient(colors: [Colors.deepOrange, Colors.green]),
        gradient: RadialGradient(
          colors: [Colors.deepOrange, Colors.tealAccent],
        ),
      ),
      margin: EdgeInsets.all(50),

      // transform: Matrix4.translationValues(50, 50, 0),
      child: Text(
        "这是一个自定义组件",
        style: TextStyle(color: Colors.black, fontSize: 20),
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
      height: 40,
      width: 200,
      // color: Colors.blue,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue,
      ),
      child: Text("按钮", style: TextStyle(fontSize: 20, color: Colors.black)),
    );
  }
}

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      decoration: BoxDecoration(color: Colors.green),
      margin: EdgeInsets.all(50),
      child: Text(
        "这是一个自定义文本,this is a text,this is a text,this is a text,this is a text,this is a text,"
        "this is a text,this is a text,this is a text",
        textAlign: TextAlign.left,
        textDirection: TextDirection.ltr,
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
        // textScaleFactor: 1,
        style: TextStyle(
          color: Colors.red,
          fontSize: 26,
          decoration: TextDecoration.lineThrough,
          decorationColor: Colors.white,
          decorationStyle: TextDecorationStyle.dashed,
          // wordSpacing: 5,
          // letterSpacing: 5,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
