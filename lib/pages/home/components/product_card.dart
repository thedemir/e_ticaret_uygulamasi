import 'package:e_ticaret_uygulamasi/models/product.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;
  final Function press;

  const ProductCard({Key? key, required this.product, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(
          width: 200,
          height: 210,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(13),
          ),
          child: Image.asset(product.image)),
    );
  }
}
//width: MediaQuery.of(context).size.width * 0.35,
   //   height: MediaQuery.of(context).size.height * 0.10,