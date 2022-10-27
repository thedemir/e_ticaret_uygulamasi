import 'package:dio/dio.dart';
import 'package:e_ticaret_uygulamasi/constants.dart';
import 'package:e_ticaret_uygulamasi/models/product_model.dart';
import 'package:e_ticaret_uygulamasi/models/product_service_model.dart';
import 'package:e_ticaret_uygulamasi/pages/product_page/components/product_card.dart';
import 'package:flutter/material.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _HomePageState();
}

class _HomePageState extends State<ProductPage> {
  List<ProductServiceModel>? _items;

  Future fetchPostProduct() async {
    final response = await Dio().get("https://demoapi.webudi.tech/api/products",
        options: Options(headers: {
          "Content-Type": "application/json",
          "Authorization": "869|41xD0qOtti7UEo0qG6V73Kw06Bpl0GwT9ANNKPzJ",
        }));
    if (response.statusCode == 200) {
      final datas = response.data;
      if (datas is List) {
        setState(() {
          _items = datas.map((e) => ProductServiceModel.fromJson(e)).toList();
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
      body: Column(children: [
        Expanded(
          flex: 10,
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: 8,
            itemBuilder: (context, index) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProductCard(item: Items.item1),
                  ProductCard(item: Items.item1),
                ],
              );
            },
          ),
        ),
      ]),
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
            Icons.notifications,
            color: Colors.blue,
          ))
    ],
    centerTitle: true,
    elevation: 0,
  );
}
