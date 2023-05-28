import 'package:bookinghealth/dil.dart';
import 'package:bookinghealth/reklama.dart';
import 'package:flutter/material.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  List ikon = [Icon(Icons.home_outlined), Icon(Icons.language_outlined)];
  List lab = ["Home", "Languages"];
  List page = [];
  Color mavi = Color.fromRGBO(6, 44, 255, 1);
  @override
  void initState() {
    // TODO: implement initState
    page = [Esassah(), Dil()];
    super.initState();
  }

  int k = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[k],
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: mavi,
          currentIndex: k,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          items: [
            for (int i = 0; i < ikon.length; i++) bottom(ikon[i], lab[i])
          ],
          type: BottomNavigationBarType.fixed,
          onTap: (val) {
            k = val;
            setState(() {});
          }),
    );
  }

  bottom(Icon ikon, String lab) {
    return BottomNavigationBarItem(icon: ikon, label: lab);
  }
}
