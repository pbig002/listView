import 'package:flutter/material.dart';


class CorloredContainer extends StatelessWidget {
  const CorloredContainer({super.key, required this.text});
final Widget text; 
  @override
  Widget build(BuildContext context) {
    return Container(
          decoration: BoxDecoration(
            
            borderRadius: BorderRadius.circular(5.0),
            color: Colors.blue.withOpacity(0.35), 
          ),
          child: Padding(padding: EdgeInsets.all(10.00), 
          child: text,),
        );
  }
}