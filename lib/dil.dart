import 'package:bookinghealth/bottom.dart';
import 'package:flutter/material.dart';

class Dil extends StatefulWidget {
  const Dil({super.key});

  @override
  State<Dil> createState() => _DilState();
}

class _DilState extends State<Dil> {
  List dil = ["Türkmen dili", "English", "Русский"];
  Color mavi = Color.fromRGBO(9, 87, 222, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.6,
            width: MediaQuery.of(context).size.width * 0.65,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/healthcare.png"),
                Text(
                  "“Saglygyn nobaty” programma üpjünçiligine hoş geldiňiz!",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: mavi,
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        "Dil saýlaň!",
                        style: TextStyle(
                            fontFamily: 'Hind Guntur',
                            color: Colors.black,
                            fontSize: 20,
                            fontWeight: FontWeight.w700),
                      ),
                      Container(
                        width: 150,
                        decoration: BoxDecoration(
                            border: Border.all(width: 1, color: mavi)),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Bottom(),
                              ));
                        },
                        child: Text(
                          "Türkmen dili",
                          style: TextStyle(
                              fontFamily: 'Hind Guntur',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Bottom(),
                              ));
                        },
                        child: Text(
                          "Englishh",
                          style: TextStyle(
                              fontFamily: 'Hind Guntur',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Bottom(),
                              ));
                        },
                        child: Text(
                          "Русский",
                          style: TextStyle(
                              fontFamily: 'Hind Guntur',
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.w400),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    ));
  }
}
