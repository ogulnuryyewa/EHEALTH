import 'dart:convert';

import 'package:bookinghealth/ugurlar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:http/http.dart' as http;

class Hassahana extends StatefulWidget {
  const Hassahana({super.key});

  @override
  State<Hassahana> createState() => _HassahanaState();
}

class _HassahanaState extends State<Hassahana> {
  List shaher = [
    "Ashgabat",
    "Turkmenabat",
    "Mary",
    "Balkanabat",
    "Ahal",
    "Ashgabat"
  ];
  List surat = [
    "assets/12.png",
    "assets/123.png",
    "assets/1234.png",
    "assets/12345.png",
    "assets/123456.png",
    "assets/1234567.png"
  ];
  List ady = [
    "Stomotologiýa merkezi",
    "Gayragoýulmasyz tiz komek merkezi",
    "Halkara saglygy goraýyş anyklaýyş merkezi",
    "Stomotologiýa merkezi",
    "Gayragoýulmasyz tiz komek merkezi",
    "Halkara saglygy goraýyş anyklaýyş merkezi"
  ];
  Color mavi = Color.fromRGBO(6, 44, 255, 1);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: Ugurlar().myappbar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Hassahana saýlaň",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: mavi,
                fontWeight: FontWeight.w700,
                fontSize: 20,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: MediaQuery.of(context).size.width,
            child: Center(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                    crossAxisCount: 2),
                itemBuilder: ((context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Ugurlar(),
                          ));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: 150,
                      margin: EdgeInsets.only(bottom: 2),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 1, color: Colors.black)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.09,
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: Image.asset(
                              surat[index],
                              fit: BoxFit.fill,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: SizedBox(
                              width: 150,
                              child: Text(
                                ady[index],
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w200,
                                    fontSize: 10),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on_outlined,
                                  color: Colors.black,
                                  size: 8,
                                ),
                                Text(
                                  shaher[index],
                                  textAlign: TextAlign.justify,
                                  style: TextStyle(
                                      fontFamily: "Poppins",
                                      color: Colors.black,
                                      fontSize: 8),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: Text(
                              " hospitals, one specialization, With fewer primary care physicians visiting their patients’ hospitals, one specialization",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.black,
                                  fontSize: 10),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    border: Border.all(color: mavi)),
                                child: Center(
                                  child: Text(
                                    "Öwrenmek",
                                    style: TextStyle(
                                        color: mavi,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.01,
                                        fontFamily: 'inter',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                              Container(
                                height:
                                    MediaQuery.of(context).size.height * 0.03,
                                width: MediaQuery.of(context).size.width * 0.2,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: mavi),
                                child: Center(
                                  child: Text(
                                    "Lukmana ýazylmak",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            MediaQuery.of(context).size.height *
                                                0.01,
                                        fontFamily: 'inter',
                                        fontWeight: FontWeight.w400),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
                itemCount: surat.length,
              ),
            ),
          )
        ],
      ),
    );
  }
}
