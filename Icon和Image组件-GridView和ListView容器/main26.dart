import 'package:flutter/material.dart';

import 'res/listData.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("这是一个Gridview"),
          centerTitle: true,
          toolbarHeight: 50,
          backgroundColor: Colors.indigoAccent,
          shadowColor: Colors.black.withOpacity(0.8),
          elevation: 5,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // List<Widget> _initGridView() {
  //   List<Widget> tempData = [];
  //   for (int i = 0; i < listData.length; i++) {
  //     tempData.add(
  //       Container(
  //         decoration: BoxDecoration(
  //           border: Border.all(color: Colors.black45, width: 1),
  //         ),
  //         // height: 120,
  //         // width: 100,
  //         child: Column(
  //           children: [
  //             Container(child: Image.network(listData[i]["imageUrl"])),
  //             SizedBox(height: 10),
  //             Text(listData[i]["author"], textAlign: TextAlign.center),
  //           ],
  //         ),
  //       ),
  //     );
  //   }
  //   return tempData;}
  Widget _getListDate(context, index) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black45, width: 1),
      ),
      // height: 120,
      // width: 100,//没有效果
      child: Column(
        children: [
          Container(child: Image.network(listData[index]["imageUrl"])),
          SizedBox(height: 10),
          Text(listData[index]["author"], textAlign: TextAlign.center),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(10),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        crossAxisSpacing: 10.0, //水平子 Widget 之间间距
        mainAxisSpacing: 10.0, //垂直子 Widget 之间间距

        maxCrossAxisExtent: 150, //一行的 Widget 数量
        childAspectRatio: 1, //宽度和高度的比例
      ),
      itemBuilder: _getListDate,
      itemCount: listData.length,
    );
  }
}
