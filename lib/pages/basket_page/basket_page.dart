import 'package:e_ticaret_uygulamasi/models/product_model.dart';
import 'package:e_ticaret_uygulamasi/pages/basket_page/components/basket_product_card.dart';
import 'package:e_ticaret_uygulamasi/pages/home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BasketPage extends StatefulWidget {
  const BasketPage({Key? key}) : super(key: key);

  @override
  State<BasketPage> createState() => _BasketPageState();
}

class _BasketPageState extends State<BasketPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => HomePage())),
            icon: Icon(Icons.chevron_left_sharp, color: Colors.blue)),
        elevation: 0.3,
        centerTitle: true,
        title: Text(
          "Sepetim",
          style: TextStyle(color: Colors.blue),
        ),
      ),
      body: ListView.builder(
        itemCount: 2,
        itemBuilder: (context, index) {
          return BasketProductCard(
            item: Items.item1,
          );
        },
      ),
    );
  }
}
