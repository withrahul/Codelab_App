// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:codelab_final/theme/theme.dart';
import 'package:icons_plus/icons_plus.dart';

import 'dashboard_screen.dart';

class TeachersScreen extends StatefulWidget {
  const TeachersScreen({super.key});

  @override
  State<StatefulWidget> createState() =>
      TeachersScreenState();
}

class TeachersScreenState
    extends State<TeachersScreen> {
  @override
  Widget build(BuildContext context) {
    return initScreen();
  }

  Widget initScreen() {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color(0xFF7C00D8),
      appBar: AppBar(
        backgroundColor: lightColorScheme.primary,
        title: Text(
          'CodeLab.',
          style: TextStyle(
              fontFamily: 'Poppins',
              color: lightColorScheme.onSecondary),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(BoxIcons.bx_arrow_back,
                color: lightColorScheme.onSecondary),
            onPressed: () =>
                Navigator.pushAndRemoveUntil(
                    (context),
                    MaterialPageRoute(
                        builder: (context) =>
                            DashboardScreen()),
                        (route) => false),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Our Teachers",
                style: TextStyle(
                  color: Color(0xff363636),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
            Divider(
              color: Colors.blue,
              indent: 15,
              endIndent: 15,
            ),
            Container(
              width: size.width,
              margin: EdgeInsets.only(top: 20, left: 20),
              child: Stack(
                fit: StackFit.loose,
                children: [
                  Container(
                    child: Text(
                      'Top Rated',
                      style: TextStyle(
                        color: Color(0xff363636),
                        fontSize: 20,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin:
                    EdgeInsets.only(right: 20, top: 1),
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'See all',
                        style: TextStyle(
                          color: Color(0xff5e5d5d),
                          fontSize: 19,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin:
                EdgeInsets.only(left: 20, right: 20),
                child: ListView(
                  children: [
                    demoTopRatedTr(
                        "assets/images/teachers/er_1.jpg",
                        "Er. Akashay Saini ",
                        "C Expert",
                          "BCA"),
                    demoTopRatedTr(
                        "assets/images/teachers/er_8.jpg",
                        "Er. Striver",
                        "C++ Expert",
                        "B.TECH"),
                    demoTopRatedTr(
                        "assets/images/teachers/er_4.jpg",
                        "Er. Hitesh Choudhary",
                        "Java Expert",
                        "B.TECH"),
                    demoTopRatedTr(
                        "assets/images/teachers/er_3.jpg",
                        "Er. Shraddha joshi",
                        "JAVASCRIPT",
                        "B.TECH"),
                    demoTopRatedTr(
                        "assets/images/teachers/er_5.jpg",
                        "Er. Sahil Gaba",
                        "AI/ML",
                        "M.TECH"),
                    demoTopRatedTr(
                        "assets/images/teachers/er_2.jpg",
                        "Er. Love Babber",
                        "MS EXCEL",
                        "B.TECH"),
                    demoTopRatedTr(
                        "assets/images/teachers/er_6.jpg",
                        "Er. Ankit Goyal",
                        "MICROSERVICES",
                        "MCA"),
                    demoTopRatedTr(
                        "assets/images/teachers/er_9.jpg",
                        "Er. Stella Kane",
                        "DATA ANALYST",
                        "B.TECH"),
                    demoTopRatedTr(
                        "assets/images/teachers/er_7.jpg",
                        "Er. Harry Silva",
                        "PYTHON LANGUAGE",
                        "BCA"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget demoTopRatedTr(String img, String name,
      String speciality, String degree) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: 90,
      // width: size.width,
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(left: 20),
            height: 90,
            width: 50,
            child: Image.asset(img),
          ),
          Container(
            margin: EdgeInsets.only(left: 20, top: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Text(
                    name,
                    style: TextStyle(
                      color: Color(0xff363636),
                      fontSize: 17,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      Text(
                        speciality,
                        style: TextStyle(
                          color: Color(0xffababab),
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(
                            top: 3,
                            left: size.width * 0.25),
                        child: Row(
                          children: [
                            Container(
                              child: Text(
                                "Degree ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            ),
                            Container(
                              child: Text(
                                degree,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontFamily: 'Roboto',
                                ),
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}