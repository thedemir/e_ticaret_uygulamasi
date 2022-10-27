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
        leading: Icon(Icons.chevron_left_sharp, color: Colors.blue),
        elevation: 0.3,
        centerTitle: true,
        title: Text(
          "Sepetim",
          style: TextStyle(color: Colors.blue),
        ),
      ),
    );
  }
}
