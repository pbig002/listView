import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
List<ProductModel> listProduct = [
    ProductModel(name: "product1", prize: 100, isActive: true),
    ProductModel(name: "product2", prize: 100, isActive: true),
    ProductModel(name: "product4", prize: 400, isActive: true),
    ProductModel(name: "product3", prize: 300, isActive: true),
  ];

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Learning")),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Column(
              children: [
                Text("1."),
                Text("product: "),
                Text("prize: 2000 kip"),
                Text("status: isActive"),
                const SizedBox(height: 20),
              ],
            ),
            Column(
              children: [
                Text("1."),
                Text("product: product1"),
                Text("prize: 2000 kip"),
                Text("status: isActive"),
                const SizedBox(height: 20),
              ],
            ),
            Column(
              children: [
                Text("1."),
                Text("product: product1"),
                Text("prize: 2000 kip"),
                Text("status: isActive"),
                const SizedBox(height: 20),
              ],
            ),
            Column(
              children: [
                Text("1."),
                Text("product: product1"),
                Text("prize: 2000 kip"),
                Text("status: isActive"),
                const SizedBox(height: 20),
              ],
            ),
            Column(
              children: [
                Text("1."),
                Text("product: product1"),
                Text("prize: 2000 kip"),
                Text("status: isActive"),
                const SizedBox(height: 20),
              ],
            ),
                  Column(
              children: [
                Text("1."),
                Text("product: product1"),
                Text("prize: 2000 kip"),
                Text("status: isActive"),
                const SizedBox(height: 20),
              ],
            ),
                  Column(
              children: [
                Text("1."),
                Text("product: product1"),
                Text("prize: 2000 kip"),
                Text("status: isActive"),
                const SizedBox(height: 20),
              ],
            ),

            
          ],
        ),
      ),
    );
  }
}
class ProductModel {
  String name;
  int prize;
  bool isActive;
  ProductModel({
    required this.name,
    required this.prize,
    required this.isActive,
  });
}