import 'package:bookinghealth/esasy.dart';
import 'package:bookinghealth/hassahana.dart';
import 'package:bookinghealth/myprofil.dart';
import 'package:bookinghealth/onlinebook.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class Bottom extends StatefulWidget {
  const Bottom({super.key});

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  List icon = [
    Icons.home_outlined,
    Icons.local_hospital_outlined,
    Icons.add_chart_outlined,
    Icons.person
  ];
  Color mavi = Color.fromRGBO(6, 44, 255, 1);
  List labe = ["Esasy sahypa", "Hassahanalar", "Online Nobat", "Profil"];
  int _selectedIndex = 1;
  List<Widget> pages = [];
  @override
  void initState() {
    // TODO: implement initState
    pages = [Esasy(), Hassahana(), Onlinebook(), Myprofil()];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 20,
              color: Colors.black.withOpacity(.1),
            )
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              gap: 0,
              activeColor: mavi,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100]!,
              color: Colors.grey,
              tabs: [
                for (int i = 0; i < icon.length; i++) method(icon[i], labe[i])
              ],
              selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }

  method(IconData icons, String label) {
    return GButton(
      icon: icons,
      text: label,
    );
  }
}
