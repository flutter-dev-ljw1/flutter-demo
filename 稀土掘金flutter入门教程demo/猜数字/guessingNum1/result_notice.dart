import 'package:flutter/material.dart';

class resultNotice extends StatelessWidget {
  final Color color;
  final String str;
  resultNotice({super.key, required this.color, required this.str});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        alignment: Alignment.center,
        color: color,
        child: Text(str, style: TextStyle(fontSize: 60, color: Colors.white)),
      ),
    );
  }
}
