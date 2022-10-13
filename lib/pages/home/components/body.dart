import 'package:e_ticaret_uygulamasi/models/product.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

import 'product_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
            style: GoogleFonts.lato(fontSize: 20, fontWeight: FontWeight.bold),
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
    );
  }
}
