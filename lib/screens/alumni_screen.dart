import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../theme/theme.dart';
import 'dashboard_screen.dart';

class AlumniScreen extends StatefulWidget {
  const AlumniScreen({super.key});

  @override
  State<AlumniScreen> createState() => _AlumniScreenState();
}

class _AlumniScreenState extends State<AlumniScreen> {
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
              fontFamily: 'Poppins', color: lightColorScheme.onSecondary),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(BoxIcons.bx_arrow_back,
                color: lightColorScheme.onSecondary),
            onPressed: () => Navigator.pushAndRemoveUntil(
                (context),
                MaterialPageRoute(builder: (context) => DashboardScreen()),
                    (route) => false),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.grey[100],
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(30), topLeft: Radius.circular(30))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 5, left: 20),
              child: Text(
                "Our Alumnis",
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
                    margin: EdgeInsets.only(right: 20, top: 1),
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
                margin: EdgeInsets.only(left: 20, right: 20),
                child: ListView(
                  children: [
                    demoTopRatedTr("assets/images/Alumnis/AL_1.png", "Disha Patani",
                        "MICROSOFT"),
                    demoTopRatedTr("assets/images/Alumnis/AL_2.png", "Sanju Agarwal",
                        "ACCENTURE"),
                    demoTopRatedTr("assets/images/Alumnis/AL_3.png", "Rishab Pal",
                        "TECH MAHINDRA"),
                    demoTopRatedTr("assets/images/Alumnis/AL_4.png", "Ayush Barnwal",
                        "UBER"),
                    demoTopRatedTr("assets/images/Alumnis/AL_5.png", "Salini Goyal",
                        "AMAZON"),
                    demoTopRatedTr("assets/images/Alumnis/AL_6.png", "Cristian Tate",
                        "PWC"),
                    demoTopRatedTr("assets/images/Alumnis/AL_7.png", "Andrew Tate",
                        "IBM"),
                    demoTopRatedTr("assets/images/Alumnis/AL_8.png", "Rinku Pandey",
                        "INFOSYS"),
                    demoTopRatedTr("assets/images/Alumnis/AL_9.png", "Ravina Sharma",
                        "KPMG"),
                    demoTopRatedTr("assets/images/Alumnis/AL_10.png", "Ankit Verma",
                        "CTS"),
                    demoTopRatedTr("assets/images/Alumnis/AL_11.png", "Anudip Kumar",
                        "TCS"),
                    demoTopRatedTr("assets/images/Alumnis/AL_12.png", "Chayan Maji",
                        "WIPRO"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget demoTopRatedTr(String img, String name, String placedin) {
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
                  child: Text(
                    placedin,
                    style: TextStyle(
                      color: Color(0xff3d3c3c),
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w300,
                    ),
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
