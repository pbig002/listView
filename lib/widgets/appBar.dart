import 'package:flutter/material.dart';
class AppBar1 extends StatelessWidget {
  const AppBar1({Key?key, required this.text1,}) : super(key:key);
final String text1; 
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(text1),
    );  }
}

