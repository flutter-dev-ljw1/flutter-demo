import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fuxi2/guessingNum/result_notice.dart';

import 'guess_appbar.dart';

void main() {
  runApp(MaterialApp(home: Guesspage(), debugShowCheckedModeBanner: false));
}

class Guesspage extends StatefulWidget {
  const Guesspage({super.key});

  @override
  State<Guesspage> createState() => _GuesspageState();
}

class _GuesspageState extends State<Guesspage> {
  //第一步，先建立及本页面，实现获取随机数
  int _value = 0;
  bool _guessing = false;
  Random _random = Random();

  void _generateRandomValue() {
    setState(() {
      _value = _random.nextInt(100);
      _guessing = true;
    });
  }

  //第二，实现获取textfield的文本框的输入值
  TextEditingController _textfieldCtrler = TextEditingController();
  void onCheck() {
    // setState(() {
    //   print("目标值是${_value}----输入的值是${_textfieldCtrler.text}");
    // });

    //已经能拿到随机数和输入textfield的数了
    // print("目标值是${_value}----输入的值是${_textfieldCtrler.text}");

    //第三步，实现用户猜数字和随机数的比较，猜大猜小
    if (!_guessing || _textfieldCtrler.text.isEmpty) return;
    int? guessValue = int.tryParse(_textfieldCtrler.text);
    if (guessValue == null) return;

    //猜对了
    if (guessValue == _value) {
      setState(() {
        _guessing = false;
        // print("猜对了");
        _isBig = null;
      });
      return;
    }
    //猜错了
    setState(() {
      _isBig = guessValue > _value;
      // print("猜对了,猜大了？${_isBig}");
    });
  }

  //第三步
  bool? _isBig;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GuessAppbar(onCheck: onCheck, textfieldCtrler: _textfieldCtrler),

      //floatingActionButton
      floatingActionButton: FloatingActionButton(
        tooltip: "点击开始猜数字",
        backgroundColor: _guessing ? Colors.grey : Colors.blue,
        foregroundColor: Colors.yellow,
        shape: CircleBorder(),
        onPressed: _guessing ? null : _generateRandomValue,
        child: Icon(Icons.rotate_right_sharp),
      ),

      body: Stack(
        // alignment: Alignment.center,
        // fit: StackFit.expand,
        children: [
          if (_isBig != null)
            Column(
              children: [
                //第四步，实现页面对于猜大猜小的变化
                if (_isBig!) resultNotice(color: Colors.red, str: "大了"),
                Spacer(),
                if (!_isBig!) resultNotice(color: Colors.blue, str: "小了"),
                // resultNotice(color: Colors.blue, str: "小了"),
                // //
                // resultNotice(color: Colors.red, str: "大了"),
              ],
            ),

          //文字提示
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (!_guessing)
                  Text("点击生成随机数字", style: TextStyle(fontSize: 25)),
                Text(
                  _guessing ? "**" : "${_value}",
                  style: TextStyle(fontSize: 25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
