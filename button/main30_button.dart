import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("这些是button"),
          centerTitle: true,
          toolbarHeight: 50,
          backgroundColor: Colors.lightGreenAccent,
          shadowColor: Colors.black54,
          elevation: 10,
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
    return ListView(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton(onPressed: () {}, child: Text("普通按钮")),
            TextButton(onPressed: () {}, child: Text("文本按钮")),
            OutlinedButton(onPressed: () {}, child: Text("边框按钮")),
            IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ElevatedButton.icon(
              onPressed: () {},
              label: Text("普通带图标按钮"),
              icon: Icon(Icons.access_alarm),
            ),
            TextButton.icon(
              onPressed: () {},
              label: Text("文本带图标"),
              icon: Icon(Icons.wechat, color: Colors.pink, size: 30),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              label: Text("边框带图标按钮"),
              icon: Icon(Icons.pending_actions),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60,
              width: 200,
              child: ElevatedButton(onPressed: () {}, child: Text("大按钮")),
            ),
            Container(
              height: 30,
              width: 70,
              child: OutlinedButton(
                onPressed: () {},
                child: Text("小按钮", style: TextStyle(fontSize: 5)),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: SizedBox(
                height: 40,
                child: ElevatedButton(onPressed: () {}, child: Text("自适应按钮")),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 60,
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(
                    //背景色
                    Colors.lightGreenAccent,
                  ),
                  foregroundColor: WidgetStateProperty.all(Colors.black), //字体颜色
                  elevation: WidgetStateProperty.all(10), //阴影
                  shape: WidgetStateProperty.all(
                    //设置圆角
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                ),

                child: Text("自定义按钮"),
              ),
            ),

            Container(
              height: 100,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("圆形按钮"),
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.pink),
                  foregroundColor: WidgetStateProperty.all(Colors.black),
                  elevation: WidgetStateProperty.all(10),
                  shape: WidgetStateProperty.all(
                    CircleBorder(
                      side: BorderSide(color: Colors.yellow, width: 5),
                    ),
                  ),
                ),
              ),
            ),

            Container(
              height: 60,
              width: 100,
              child: OutlinedButton(
                onPressed: () {},
                child: Text("边框按钮", style: TextStyle(color: Colors.black)),
                style: ButtonStyle(
                  textStyle: WidgetStateProperty.all(TextStyle(fontSize: 12)),
                  side: WidgetStatePropertyAll(BorderSide(color: Colors.red)),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
