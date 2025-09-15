import 'package:flutter/material.dart';

import 'res/listData.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("这是动态获取列表"),
          centerTitle: true,
          toolbarHeight: 60,
          backgroundColor: Colors.amber,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  List<Widget> _initListData() {
    List<Widget> tempdata = [];
    // for (int i = 0; i < listData.length; i++) {
    //   tempdata.add(
    //     ListTile(
    //       title: Text(listData[i]["title"]),
    //       subtitle: Text(listData[i]["author"]),
    //       leading: Image.network("${listData[i]["imageUrl"]}"),
    //       trailing: Icon(Icons.chevron_right),
    //     ),
    //   );
    // }
    tempdata = listData.map((e) {
      return ListTile(
        title: Text(e["title"]),
        subtitle: Text(e["author"]),
        leading: Image.network("${e["imageUrl"]}"),
        // trailing: Icon(Icons.chevron_right),
      );
    }).toList();
    return tempdata;
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) => Divider(), //separated构造方法必须带
      itemCount: listData.length,
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(listData[i]["title"]),
          subtitle: Text(listData[i]["author"]),
          leading: Image.network("${listData[i]["imageUrl"]}"),
          trailing: Icon(Icons.chevron_right),
        );
      },
    );
  }
}
