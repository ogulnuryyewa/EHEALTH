import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Ugurlar extends StatelessWidget {
  Color acyk = Color.fromRGBO(242, 244, 255, 1);

  List ikon = [
    "assets/Brain.svg",
    "assets/DNA.svg",
    "assets/tooth.svg",
    "assets/Body.svg",
    "assets/JointsBone.svg",
    "assets/Skull.svg"
  ];

  List bolum = [
    "Newralogiýa",
    "Ginikalogiýa",
    "Denta",
    "Dermatologiýa",
    "Ortapediýa",
    "Hirurgiýa"
  ];

  Color mavi = Color.fromRGBO(6, 44, 255, 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: myappbar(context),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Hassahanalardaky saglyk ugurlary",
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
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10,
                  maxCrossAxisExtent: 200),
              itemBuilder: ((context, index) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.8,
                      width: 150,
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 1,
                      )),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SvgPicture.asset(
                            ikon[index],
                            height: MediaQuery.of(context).size.height * 0.07,
                            width: MediaQuery.of(context).size.width * 0.07,
                            alignment: Alignment.topCenter,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8),
                            child: SizedBox(
                              width: 150,
                              child: Text(
                                bolum[index],
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: "Poppins",
                                    fontSize: 10),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 150,
                            child: Text(
                              "hospitals, one specialization, With fewer primary care physicians visiting their patients’ hospitals, one specialization",
                              textAlign: TextAlign.justify,
                              style: TextStyle(
                                  fontFamily: "Poppins",
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 8),
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
                  ),
                );
              }),
              itemCount: ikon.length,
            ),
          ),
        ],
      ),
    );
  }

  AppBar myappbar(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: const EdgeInsets.only(left: 20),
        child: Image.asset(
          "assets/healthcare.png",
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.width * 0.9,
        ),
      ),
      backgroundColor: acyk,
      title: Padding(
        padding: const EdgeInsets.only(left: 8),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.042,
          width: MediaQuery.of(context).size.width * 0.55,
          child: TextField(
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide(color: mavi, width: 1)),
              suffixIcon: Icon(Icons.search_outlined),
              hintText: "Gozle",
            ),
          ),
        ),
      ),
      actions: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(
            Icons.person,
            color: mavi,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.03,
              width: MediaQuery.of(context).size.width * 0.2,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10), color: mavi),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.call,
                  ),
                  Text(
                    "Tiz kömek",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: MediaQuery.of(context).size.height * 0.01,
                        fontFamily: 'inter',
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
          ),
        ])
      ],
    );
  }
}
