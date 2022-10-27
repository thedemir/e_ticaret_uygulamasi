import 'package:e_ticaret_uygulamasi/pages/basket_page/basket_page.dart';
import 'package:e_ticaret_uygulamasi/pages/product_page/product_page.dart';
import 'package:e_ticaret_uygulamasi/pages/profil_page/profil_page.dart';
import 'package:e_ticaret_uygulamasi/pages/auth_page/password_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final tabs = const [ProductPage(), ProfilPage()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => BasketPage(),
            )),
        child: Icon(Icons.shopping_basket),
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: "Products"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profil")
          ]),
    );
  }
}
