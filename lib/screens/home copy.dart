import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<ProductModel> listProduct = [
  //   ProductModel(name: "product1", prize: 100, isActive: true),
  //   ProductModel(name: "product2", prize: 100, isActive: true),
  //   ProductModel(name: "product4", prize: 400, isActive: true),
  //   ProductModel(name: "product3", prize: 300, isActive: true),
  // ];

  List<Map<String, dynamic>> listProduct = [
    {"name": "product1", "pize": 100, "isActive": true},
    {"name": "product2", "pize": 200, "isActive": true},
    {"name": "product3", "pize": 300, "isActive": true},
    {"name": "product4", "pize": 400, "isActive": true},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Learning")),
      body: ListView.builder(
          itemBuilder: (context, index) => Card(
            
            color: Colors.green,
                  child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.all(0.5),
                    // decoration: BoxDecoration(
                    //   image: DecorationImage(
                    //     image: Image.asset( 'Images/668e469eb1856aa2e6e3f963b2ffd6e1.jpg').image, 
                    //     fit: BoxFit.fill, 
                    //      ),
                    // ),
                   child: Image.network('https://picsum.photos/250?image=9'),
                  ),
                  Text("Phonpasit"),
                ],
              ))

          // children:
          //   [Padding(
          //     padding: const EdgeInsets.all(8.0),
          //     child: Column(
          //       children: [
          //         Column(
          //           children: [
          //             Text("1."),
          //             Text("product: "),
          //             Text("prize: 2000 kip"),
          //             Text("status: isActive"),
          //             const SizedBox(height: 20),
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ],

          // children: listProduct.map((pc) {
          //   return Card(
          //     child: Row(
          //       children: [
          //         Container(
          //           child: Text(
          //               'product: ${pc.name} prize:${pc.prize} Active:${pc.isActive}'),
          //         ),
          //       ],
          //     ),
          //   );
          // }).toList(),

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
