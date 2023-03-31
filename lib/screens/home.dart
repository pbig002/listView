import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

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
    {
      "name": "Yao1",
      "pize": 100,
      "image":
          "https://th.bing.com/th/id/OIP.Sl0uxwMYqbczA9FzRt7OSQAAAA?pid=ImgDet&rs=1",
      "isActive": true,
    },
    {
      "name": "Yao2",
      "pize": 200,
      "image":
          "https://th.bing.com/th/id/OIP.3KxCI4z3yKkg3lJNQYnWZAAAAA?w=163&h=119&c=7&r=0&o=5&dpr=1.3&pid=1.7",
      "isActive": true,
    },
    {
      "name": "Yao3",
      "pize": 300,
      "image":
          "https://i.pinimg.com/originals/49/87/90/4987909b90500bf6b1c8b88a3a3b0fd5.jpg",
      "isActive": true
    },
    {
      "name": "Yao4",
      "pize": 400,
      "image":
          "https://th.bing.com/th/id/OIP.lpFx87971bgE5sAxivgWdAHaHa?pid=ImgDet&w=207&h=207&c=7&dpr=1.3",
      "isActive": true
    },
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
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("ListView Search"),
        backgroundColor: Color.fromARGB(255, 197, 241, 245),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            TextField(
              onChanged: (value) => _runFilter(value),
              decoration: InputDecoration(
                  labelText: 'Search',
                  labelStyle: TextStyle(color: Colors.black),
                  suffixIcon: Icon(Icons.search)),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: _foundProduct.length,
                  itemBuilder: (context, index) => Card(
                        elevation: 12,
                        shadowColor: Colors.blueAccent,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Color.fromARGB(255, 42, 111, 168),
                          ),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        color: Color.fromARGB(255, 244, 255, 255),
                        margin: EdgeInsets.symmetric(vertical: 10),
                        child: ListTile(
                          leading: CircleAvatar(
                            backgroundImage:
                                NetworkImage(_foundProduct[index]["image"]),
                            radius: 30,
                          ),
                          title: Text(
                            _foundProduct[index]["name"],
                            style: const TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 43, 43, 43)),
                          ),
                          subtitle: Text(
                            ' Age: ${_foundProduct[index]["pize"].toString()}',
                            style: const TextStyle(color: Colors.amber),
                          ),
                        ),
                      )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
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
                // textStyle: TextStyle(color: Colors.black),
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
      ),
    );
  }
}

class ProductModel {
  String name;
  int prize;
  bool isActive;
  dynamic image;
  ProductModel({
    required this.name,
    required this.prize,
    required this.isActive,
    required this.image,
  });
}
