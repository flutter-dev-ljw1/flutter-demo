import 'package:flutter/material.dart';

import 'res/listData.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("这是Card，AspectRatio，CircleAvatar组件"),
          centerTitle: true,
          toolbarHeight: 60,
          shadowColor: Colors.black54,
          elevation: 10,
          backgroundColor: Colors.lightGreenAccent,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  List<Widget> _getListData() {
    var tempData = listData.map((value) {
      return Card(
        margin: EdgeInsets.all(10),
        shadowColor: Colors.black,
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 16 / 9,
              child: Image.network(value["imageUrl"], fit: BoxFit.cover),
            ),
            ListTile(
              leading: ClipOval(
                child: Image.network(
                  value["imageUrl"],
                  fit: BoxFit.cover,
                  width: 60,
                  height: 60,
                ),
              ),
              title: Text(value["title"], style: TextStyle(fontSize: 20)),
              subtitle: Text(value["author"]),
              // visualDensity: VisualDensity(vertical: -4),
            ),
          ],
        ),
      );
    });
    return tempData.toList();
  }

  Widget listdataBuilder(BuildContext context, int index) {
    return Card(
      margin: EdgeInsets.all(10),
      shadowColor: Colors.black,
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(
              listData[index]["imageUrl"],
              fit: BoxFit.cover,
            ),
          ),
          ListTile(
            leading: ClipOval(
              child: Image.network(
                listData[index]["imageUrl"],
                fit: BoxFit.cover,
                width: 60,
                height: 60,
              ),
            ),
            title: Text(
              listData[index]["title"],
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(listData[index]["author"]),
            // visualDensity: VisualDensity(vertical: -4),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listData.length,
      itemBuilder: listdataBuilder,
    );
  }
}
