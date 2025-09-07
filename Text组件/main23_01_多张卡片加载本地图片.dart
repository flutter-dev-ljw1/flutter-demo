import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "不同卡片带本地图片",
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          centerTitle: true,
          toolbarHeight: 60,
          backgroundColor: Colors.green,
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              MyCard(
                imagePath: "images/aaa.jpg",
                title: "Flutter基础",
                content:
                    "Flutter是一个用于构建跨平台应用的UI工具包，"
                    "可以同时开发iOS和Android应用。",
              ),
              MyCard(
                imagePath: "images/1.jpeg",
                title: "Dart语言",
                content:
                    "Dart是Flutter使用的编程语言，它是一种面向对象的"
                    "语言，具有垃圾回收功能。",
              ),
              MyCard(
                imagePath: "images/2.jpeg",
                title: "Widget组件",
                content:
                    "在Flutter中，一切皆为Widget，Widget是构建UI的基本"
                    "块，可以组合形成复杂界面。",
              ),
              MyCard(
                imagePath: "images/aaa.jpg",
                title: "2025-09-07练习",
                content:
                    "结合了container和text组件，完成MyCard自定义参数的组件，"
                    "实现滑动界面。",
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

class MyCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Color? titleColor;
  final String content;
  final int maxLines;

  const MyCard({
    super.key,
    required this.imagePath,
    required this.title,
    required this.content,
    this.titleColor,
    this.maxLines = 2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 320),
      margin: EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 4,
            color: Colors.black.withOpacity(0.4),
          ),
        ],
      ),
      padding: EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MyImage(name: imagePath),
          SizedBox(height: 8),
          MyTitle(title: title, color: titleColor ?? Colors.black),
          SizedBox(height: 8),
          MyContent(content: content, maxLines: maxLines),
        ],
      ),
    );
  }
}

class MyImage extends StatelessWidget {
  final String name;
  const MyImage({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    // 添加空值检查
    if (name.isEmpty) {
      return Container(
        height: 200,
        color: Colors.grey,
        child: Center(child: Text('图片路径为空')),
      );
    }

    // 使用try-catch捕获加载错误
    return Container(
      height: 200,
      child: Image.asset(
        name,
        fit: BoxFit.cover,
        errorBuilder: (context, error, stackTrace) {
          return Container(
            color: Colors.red,
            child: Center(child: Text('图片加载失败')),
          );
        },
      ),
    );
  }
}

class MyTitle extends StatelessWidget {
  final String title;
  final Color color;
  const MyTitle({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: TextStyle(color: color, fontWeight: FontWeight.bold, fontSize: 20),
    );
  }
}

class MyContent extends StatelessWidget {
  final String content;
  final int maxLines;
  const MyContent({super.key, required this.content, required this.maxLines});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      overflow: TextOverflow.ellipsis,
      maxLines: maxLines,

      style: TextStyle(color: Colors.black54, fontSize: 16),
    );
  }
}
