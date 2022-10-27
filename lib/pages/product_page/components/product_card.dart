import 'package:e_ticaret_uygulamasi/models/product_service_model.dart';
import 'package:flutter/material.dart';

import '../../../models/product_model.dart';

class ProductCard extends StatelessWidget {
  final ProductModel item;
  const ProductCard({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Flexible(
        flex: 2,
        child: Card(
          child: Padding(
            padding:
                const EdgeInsets.only(top: 10, left: 14, right: 14, bottom: 10),
            child: Column(
              children: [
                SizedBox(height: 5),
                Image.network(
                  Items.item1.image,
                  fit: BoxFit.scaleDown,
                  cacheHeight: 100,
                ),
                SizedBox(height: 2),
                Text(
                  Items.item1.title,
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  "${Items.item1.price}₺",
                  style: TextStyle(fontSize: 14),
                ),
                SizedBox(height: 2),
                SizedBox(
                  height: 22,
                  width: 100,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Row(children: [
                        Icon(Icons.add_shopping_cart_rounded, size: 15),
                        Text(
                          "Sepete Ekle",
                          style: TextStyle(fontSize: 10),
                        )
                      ])),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
// Padding(
//       padding: const EdgeInsets.only(bottom: 10),
//       child: Container(
//         height: 230,
//         width: 230,
//         decoration: BoxDecoration(
//           color: Colors.blue,
//         ),
//         child: Column(
//           children: [
//             SizedBox(
//               height: 170,
//               width: 170,
//               child: Image.network(
//                 Items.item1.image,
//                 fit: BoxFit.contain,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );