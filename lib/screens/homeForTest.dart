import 'package:flutter/material.dart';
import 'package:learn_widget/widgets/textField.dart';
import 'package:learn_widget/widgets/appBar.dart';
class HomePageTest extends StatefulWidget {
  const HomePageTest({super.key});

  @override
  State<HomePageTest> createState() => _HomePageTestState();
}

class _HomePageTestState extends State<HomePageTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Test widgets"),
        backgroundColor: Colors.amber.shade300,
      ),
      // appBar: AppBar1(text1: "MY APPBAR"),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Center(
          child: Column(
            children: [
              TextFieldWidget(
                hintText1: "name",
              ),
              TextFieldWidget(
                hintText1: "Last name",
              ),
              TextFieldWidget(
                hintText1: "Email",
              ),
              TextFieldWidget(
                hintText1: "Tel",
              )
            ],

            
            
          ), 
          
        
        ),
      ),
    );
  }
}
