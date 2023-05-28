import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Esasy extends StatefulWidget {
  const Esasy({super.key});

  @override
  State<Esasy> createState() => _EsasyState();
}

class _EsasyState extends State<Esasy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          // snap: true,
          title: Text(
            "Saglygyň Nobaty",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w200,
            ),
          ),
          leading: SvgPicture.asset("assets/healthcare.png"),

          // collapsedHeight: 300,
          expandedHeight: 280,
          flexibleSpace: FlexibleSpaceBar(
            background: Column(
              children: [
                Stack(
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/doct.png",
                          fit: BoxFit.fill,
                          height: MediaQuery.of(context).size.height * 0.3,
                          width: MediaQuery.of(context).size.width,
                        )
                      ],
                    ),
                    Positioned(
                        right: 200,
                        left: 0,
                        child: Container(
                          height: double.infinity,
                          width: 30,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Saglygyň nobaty",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                    fontSize: 40.61,
                                    fontFamily: "Poppins"),
                              ),
                              Text(
                                "Sen wagtyňy tygşytlap, saglygyňy bejertmek isleseň bu platforma saňa kömek eder.",
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                "Çalt, Tiz, Amatly ýoldan peýdalan!",
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ))
                  ],
                )
              ],
            ),
          ),
        )
      ],
    ));
  }
}
