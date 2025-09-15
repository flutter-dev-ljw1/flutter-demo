import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("这是一个垂直列表"),
          centerTitle: true,
          toolbarHeight: 60,
          backgroundColor: Colors.tealAccent,
          shadowColor: Colors.black.withOpacity(0.8),
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, 2),
            blurRadius: 5,
            color: Colors.black.withOpacity(0.5),
          ),
        ],
      ),
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            width: 180,
            // color: Colors.white,
            decoration: BoxDecoration(color: Colors.white),

            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        // offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://www.itying.com/images/flutter/4.png",
                    fit: BoxFit.cover,
                  ),
                ),
                // SizedBox(height: 8),
                Text("这是一个文本1", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          VerticalDivider(),

          //
          Container(
            width: 180,
            // color: Colors.white,
            decoration: BoxDecoration(color: Colors.white),

            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        // offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://www.itying.com/images/flutter/1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                // SizedBox(height: 8),
                Text("这是一个文本1", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          VerticalDivider(),

          //
          Container(
            width: 180,
            // color: Colors.white,
            decoration: BoxDecoration(color: Colors.white),

            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        // offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://www.itying.com/images/flutter/2.png",
                    fit: BoxFit.cover,
                  ),
                ),
                // SizedBox(height: 8),
                Text("这是一个文本1", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          VerticalDivider(),

          //
          Container(
            width: 180,
            // color: Colors.white,
            decoration: BoxDecoration(color: Colors.white),

            child: Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        // offset: Offset(0, 2),
                        blurRadius: 5,
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ],
                  ),
                  child: Image.network(
                    "https://www.itying.com/images/flutter/5.png",
                    fit: BoxFit.cover,
                  ),
                ),
                // SizedBox(height: 8),
                Text("这是一个文本1", style: TextStyle(fontSize: 16)),
              ],
            ),
          ),
          VerticalDivider(),
          //
        ],
      ),
    );
  }
}
