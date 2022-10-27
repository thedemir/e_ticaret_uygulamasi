import 'package:dio/dio.dart';
import 'package:e_ticaret_uygulamasi/constants.dart';
import 'package:e_ticaret_uygulamasi/models/product_model.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _HomePageState();
}

class _HomePageState extends State<ProductPage> {
  List<ProductModel>? _items;

  Future fetchPostProduct() async {
    final response = await Dio().get("https://demoapi.webudi.tech/api/products",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization":
              "Bearer 869|41xD0qOtti7UEo0qG6V73Kw06Bpl0GwT9ANNKPzJ",
        }));
    if (response.statusCode == 200) {
      final datas = response.data;
      if (datas is List) {
        setState(() {
          _items = datas.map((e) => ProductModel.fromJson(e)).toList();
        });
      }
    } else {
      print(response.statusCode);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: buildAppBar(),
      body: ListView.builder(
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return Container(
            width: 300,
            height: 50,
            color: Colors.red,
            child: Text(""),
          );
        },
      ),
    );
  }
}

AppBar buildAppBar() {
  return AppBar(
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.menu,
        color: Colors.blue,
      ),
    ),
    title: const Text(
      "Everest",
      style: TextStyle(color: Colors.blue),
    ),
    actions: [
      IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.shopping_basket,
            color: Colors.blue,
          ))
    ],
    centerTitle: true,
    elevation: 0,
  );
}
