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
    {"name": "product1", "pize": 100,"image":"Images/yaorenmao_ririchiyo.jpg" ,"isActive": true},
    {"name": "product2", "pize": 200, "image":"Images/yaorenmao_ririchiyo.jpg" ,"isActive": true},
    {"name": "product3", "pize": 300, "image":"Images/yaorenmao_ririchiyo.jpg" ,"isActive": true},
    {"name": "product4", "pize": 400, "image":"Images/yaorenmao_ririchiyo.jpg" ,"isActive": true},
  ];

  List<Map<String, dynamic>> _foundProduct = [];

  @override
  void initState() {
    _foundProduct = listProduct;
    super.initState();
  }

  void _runFilter(String enteredKeyword) {
    List<Map<String, dynamic>> result = [];
    if (enteredKeyword.isEmpty) {
      result = listProduct;
    } else {
      result = listProduct
          .where((element) => element["name"]
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
    }
    setState(() {
      _foundProduct = result; 
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Search"),
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                  labelText: 'Search', suffixIcon: Icon(Icons.search)),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _foundProduct.length,
                  itemBuilder: (context, index) => Card(
                        color: Color.fromARGB(255, 187, 129, 78),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: const CircleAvatar(backgroundImage: NetworkImage('https://i.pinimg.com/236x/cf/74/3a/cf743a53499f50d894e37528271c1056.jpg?nii=t'), 
                          radius: 30, ), 
                          title: Text(
                            _foundProduct[index]["name"],
                            style: const TextStyle(
                                fontSize: 25, color: Colors.white),
                          ),
                          subtitle: Text(
                            ' Prize: ${_foundProduct[index]["pize"].toString()} ',
                            style: const TextStyle(color: Colors.amber),
                          ),
                        ),
                      )),
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
  var image; 
  ProductModel({
    required this.name,
    required this.prize,
    required this.isActive,
    required this.image, 
  });
}
