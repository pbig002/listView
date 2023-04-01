import 'package:flutter/material.dart';
import 'package:learn_widget/widgets/textField.dart';
import 'package:learn_widget/widgets/appBar.dart';

import '../widgets/narBar.dart';

class HomePageTest extends StatefulWidget {
  const HomePageTest({super.key});

  @override
  State<HomePageTest> createState() => _HomePageTestState();
}

class _HomePageTestState extends State<HomePageTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NarBarWidget(),
      appBar: AppBar(
        title: Text("Test widgets"),
        backgroundColor: Colors.amber.shade300,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(shape: Shadow(color: Colors.black)),
              child: TextFieldWidget(
                hintText1: "name",
              ),
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
    );
  }
}
