import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfilPage extends StatefulWidget {
  const ProfilPage({Key? key}) : super(key: key);

  @override
  State<ProfilPage> createState() => _ProfilPageState();
}

class _ProfilPageState extends State<ProfilPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(children: [
          SizedBox(height: 100),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage("assets/images/yalniz.jpg"),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.person, size: 30),
              SizedBox(width: 8),
              Text(
                "Nurullah Demir",
                style: TextStyle(fontSize: 30),
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.mail),
              SizedBox(width: 8),
              Text(
                "demirnurullahhh@gmail.com",
                style: TextStyle(fontSize: 20),
              ),
            ],
          ),
          SizedBox(height: 60),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.1,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.key),
                hintText: "Eski Şifre",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.1,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.key),
                hintText: "Yeni Şifre",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.7,
            height: MediaQuery.of(context).size.height * 0.1,
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.key),
                hintText: "Yeni Şifre Tekrar",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: 150,
            height: 44,
            child: ElevatedButton(
              onPressed: null,
              child: Text(
                "Şifre Değiştir",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
