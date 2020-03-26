import 'package:flutter/material.dart';
class StatusBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double statusBarWidth = MediaQuery.of(context).padding.top;

    return  Container(
        height: statusBarWidth,
        color: Color.fromARGB(250, 255, 255, 255)
    );
  }
}
