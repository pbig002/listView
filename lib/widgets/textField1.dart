import 'package:flutter/material.dart';


class tfTwst extends StatefulWidget {
  const tfTwst({Key? key, required this.hint}) : super(key: key);
final String hint;
  @override
  State<tfTwst> createState() => _tfTwstState();
}

class _tfTwstState extends State<tfTwst> {
  @override
  Widget build(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(
        
      ),
    );
  }
}