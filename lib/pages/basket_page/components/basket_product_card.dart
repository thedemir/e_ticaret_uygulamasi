import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import '../../../models/product_model.dart';

class BasketProductCard extends StatefulWidget {
  final ProductModel item;
  const BasketProductCard({Key? key, required this.item}) : super(key: key);

  @override
  State<BasketProductCard> createState() => _BasketProductCardState();
}

class _BasketProductCardState extends State<BasketProductCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Slidable(
        endActionPane: ActionPane(motion: StretchMotion(), children: [
          SlidableAction(
              onPressed: (context) => null,
              backgroundColor: Colors.blue,
              icon: Icons.delete_outlined)
        ]),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.only(left: 20, top: 10, bottom: 10),
            child: Row(
              children: [
                Image.network(
                  Items.item1.image,
                  height: 50,
                  fit: BoxFit.scaleDown,
                ),
                SizedBox(width: 30),
                Column(
                  children: [
                    Text(
                      Items.item1.title,
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "${Items.item1.price}₺",
                      style: TextStyle(fontSize: 14),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
