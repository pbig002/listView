import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class NarBarWidget extends StatefulWidget {
  const NarBarWidget({Key? key}) : super(key: key);
  @override
  State<NarBarWidget> createState() => _NarBarWidgetState();
}

class _NarBarWidgetState extends State<NarBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
        child: GNav(
          backgroundColor: Colors.white,
          color: Colors.blue,
          gap: 8,
          tabBackgroundColor: Colors.blue.shade50,
          padding: EdgeInsets.all(20),
          tabs: [
            GButton(
              icon: Icons.home,
              iconColor: Color.fromARGB(255, 8, 156, 167),
              text: 'home',
            ),
            GButton(
              icon: Icons.favorite_border,
              iconColor: Color.fromARGB(255, 8, 156, 167),
              text: 'Likes',
            ),
            GButton(
              icon: Icons.search,
              iconColor: Color.fromARGB(255, 8, 156, 167),
              text: 'Search',
            ),
            GButton(
              icon: Icons.settings,
              iconColor: Color.fromARGB(255, 8, 156, 167),
              text: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}
