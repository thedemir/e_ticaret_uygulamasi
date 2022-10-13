import 'package:flutter/material.dart';
import '../../widgets/main_button.dart';

class PasswordPage extends StatefulWidget {
  const PasswordPage({Key? key}) : super(key: key);

  @override
  State<PasswordPage> createState() => _PasswordPageState();
}

class _PasswordPageState extends State<PasswordPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 30, left: 15),
              child: Row(
                children: [
                  const Icon(Icons.email),
                  const SizedBox(width: 4),
                  const Text(
                    "demirnurullahhh@gmail.com",
                    style: TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("(Hesap Değiştir)"),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 360,
              child: TextField(
                decoration: InputDecoration(
                  prefixIcon: const Icon(Icons.key),
                  hintText: "Şifre",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 50, top: 40),
              child: MainButton(text: "Giris Yap"),
            )
          ],
        ),
      ),
    );
  }
}
