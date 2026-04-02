import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class GuessAppbar extends StatelessWidget implements PreferredSizeWidget {
  final TextEditingController textfieldCtrler;
  final VoidCallback onCheck;

  GuessAppbar({
    super.key,
    required this.onCheck,
    required this.textfieldCtrler,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
        statusBarColor: Colors.grey,
      ),
      actions: [
        // Icon(Icons.arrow_circle_right, color: Colors.lightBlue),//inkwell试一下
        IconButton(
          splashRadius: 20,
          onPressed: onCheck,
          icon: Icon(Icons.ads_click),
          color: Colors.blue,
        ),
        SizedBox(width: 15),
      ],
      leading: Icon(Icons.menu, color: Colors.lightBlue),
      title: TextField(
        controller: textfieldCtrler,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          filled: true, //背景填充
          hintText: "0~99 numbers:",
          hintStyle: TextStyle(fontSize: 14),
          border: UnderlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(6)),
          ),
        ),
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
