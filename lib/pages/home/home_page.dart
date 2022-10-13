import 'package:e_ticaret_uygulamasi/constants.dart';

import 'package:e_ticaret_uygulamasi/pages/home/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../models/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: buildAppBar(),
      body: Column(
        children: [
          Expanded(
            flex: 8,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Align(
                  alignment: AlignmentDirectional.topCenter,
                  child: Row(
                    children: [
                      Image.asset("assets/images/kampanya1.png"),
                      Image.asset("assets/images/kampanya2.png"),
                      Image.asset("assets/images/kampanya3.png"),
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, right: 255),
            child: Text(
              "Çok Satanlar",
              textAlign: TextAlign.left,
              style:
                  GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 6,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductCard(product: products[index], press: () {});
              },
            ),
          ),
          Expanded(flex: 10, child: Container()),
        ],
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
            Icons.notifications,
            color: Colors.blue,
          ))
    ],
    centerTitle: true,
    backgroundColor: AppColors.bgColor,
    elevation: 0,
  );
}
