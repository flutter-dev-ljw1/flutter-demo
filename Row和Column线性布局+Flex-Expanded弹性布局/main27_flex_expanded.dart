import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("这是线性布局和弹性布局。"),
          centerTitle: true,
          toolbarHeight: 50,
          backgroundColor: Colors.greenAccent,
          shadowColor: Colors.black45,
          elevation: 8,
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
        Container(height: 200, width: double.infinity, color: Colors.black26),
        SizedBox(height: 10),
        Row(
          children: [
            SizedBox(width: 8),
            Expanded(
              flex: 2,
              child: SizedBox(
                height: 180,
                child: Image.network(
                  "https://www.itying.com/images/flutter/2.png",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 10),
            Expanded(
              flex: 1,
              child: SizedBox(
                height: 180,
                child: Column(
                  children: [
                    Expanded(
                      flex: 1,
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.network(
                          "https://www.itying.com/images/flutter/4.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(height: 8),
                    Expanded(
                      flex: 2,
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.network(
                          "https://www.itying.com/images/flutter/1.png",
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 8),
          ],
        ),
        SizedBox(height: 10),
        Container(height: 200, width: double.infinity, color: Colors.black45),
      ],
    );
  }
}

class MyIconCantainer extends StatelessWidget {
  final Color backgroundColor;
  final IconData myIcon;
  const MyIconCantainer({
    super.key,
    required this.backgroundColor,
    required this.myIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width: 100,
      color: backgroundColor,
      child: Icon(myIcon, size: 30, color: Colors.white),
    );
  }
}
