import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("不同样式的卡片展示"),
          centerTitle: true,
          toolbarHeight: 60,
          backgroundColor: Colors.blue,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              MyCard(
                title: "Flutter基础",
                content:
                    "Flutter是一个用于构建跨平台应用的UI工具包，"
                    "可以同时开发iOS和Android应用。",
                imageColor: Colors.green,
              ),
              MyCard(
                title: "Dart语言",
                content:
                    "Dart是Flutter使用的编程语言，它是一种面向对象的"
                    "语言，具有垃圾回收功能。",
                imageColor: Colors.limeAccent,
              ),
              MyCard(
                title: "Widget组件",
                content:
                    "在Flutter中，一切皆为Widget，Widget是构建UI的基本"
                    "块，可以组合形成复杂界面。",
                imageColor: Colors.deepPurpleAccent,
                maxLines: 3,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class MyCard extends StatelessWidget {
  final String title;
  final String content;
  final Color imageColor;
  final Color? titleColor;
  final int maxLines;

  const MyCard({
    super.key,
    required this.title,
    required this.content,
    required this.imageColor,
    this.titleColor,
    this.maxLines = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 300),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.3),
            offset: Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyCardImage(color: imageColor),
          SizedBox(height: 8),
          MyCardTitle(text: title, color: titleColor ?? Colors.black),
          SizedBox(height: 8),
          MyCardContent(content: this.content, maxLines: this.maxLines),
          // MyCardImage(),
        ],
      ),
    );
  }
}

class MyCardImage extends StatelessWidget {
  final Color color;
  const MyCardImage({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      // width: 200, //??
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        color: color,
      ),
    );
  }
}

class MyCardTitle extends StatelessWidget {
  final String text;
  final Color color;
  const MyCardTitle({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,

      style: TextStyle(color: color, fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}

class MyCardContent extends StatelessWidget {
  final String content;
  final int maxLines;
  const MyCardContent({
    super.key,
    required this.content,
    required this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,
      style: TextStyle(color: Colors.grey[600], fontSize: 16),
    );
  }
}
