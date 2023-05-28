import 'package:bookinghealth/bottomnav.dart';

import 'package:flutter/material.dart';

class Mail extends StatefulWidget {
  const Mail({super.key});

  @override
  State<Mail> createState() => _MailState();
}

class _MailState extends State<Mail> {
  Color acyk = Color.fromRGBO(242, 244, 255, 1);
  Color mavi = Color.fromRGBO(6, 44, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 17, bottom: 17),
            child: Text(
              "Registrasiýa gornüşini saýla",
              style: TextStyle(
                  color: mavi, fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            height: 59,
            width: 370,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: mavi, width: 1),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icon.png",
                  height: 35,
                  width: 35,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 17,
                    bottom: 17,
                  ),
                  child: Text(
                    "Google bilen Registrasiýa Bol",
                    style: TextStyle(color: Colors.black, fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(10, 84, 41, 1))),
                ),
                Text("or"),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(10, 84, 41, 1))),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 17, right: 17),
            child: TextField(
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: mavi)),
                    hintText: "Ulanyjy ady",
                    labelText: "Ulanyjy ady",
                    labelStyle: TextStyle(color: mavi),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 10, right: 17),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: mavi)),
                  suffixText: "@example.com",
                  hintText: "E-mail adres",
                  labelText: "E-mail adres",
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      borderSide: BorderSide(width: 1, color: mavi))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 17, right: 17),
            child: TextField(
                maxLength: 8,
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 1, color: mavi)),
                    hintText: "Açar sözi",
                    suffixIcon: Icon(Icons.visibility_outlined),
                    labelText: "Açar sözi",
                    labelStyle: TextStyle(color: mavi),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17, top: 17, right: 17),
            child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                      width: 1,
                      color: mavi,
                    )),
                    suffixIcon: Icon(Icons.visibility_outlined),
                    labelText: "Açarsözi tassyklaň",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ))),
          ),
          Padding(
            padding: const EdgeInsets.all(17.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Bottomnav(),
                    ));
              },
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                  color: mavi,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 140),
                      child: Icon(
                        Icons.person_add,
                        color: Colors.white,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        "Agza Bol",
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
