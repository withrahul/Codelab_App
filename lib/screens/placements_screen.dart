// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:codelab_final/screens/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:codelab_final/theme/theme.dart';
import 'package:icons_plus/icons_plus.dart';

import 'dashboard_screen.dart';

class PlacementsScreen extends StatefulWidget {
  const PlacementsScreen({super.key});

  @override
  State<StatefulWidget> createState() =>
      PlacementsScreenState();
}

class PlacementsScreenState
    extends State<PlacementsScreen> {
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
                "Our Placements",
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
                      'Top Companies',
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
                    demoTopRatedcrs(context,
                        "assets/images/go.png",
                        "GOOGLE"),
                    demoTopRatedcrs(context,
                        "assets/images/am.png",
                        "AMDOCS"),
                    demoTopRatedcrs(context,
                        "assets/images/acc.png",
                        "ACCENTURE"),
                    demoTopRatedcrs(context,
                        "assets/images/tech.png",
                        "TECH MAHINDRA"),
                    demoTopRatedcrs(context,
                        "assets/images/ey.png",
                        "ERNST & YOUNG",),
                    demoTopRatedcrs(context,
                        "assets/images/wi.jpg",
                        "WIPRO"),
                    demoTopRatedcrs(context,
                        "assets/images/tcs.png",
                        "TCS"),
                    demoTopRatedcrs(context,
                        "assets/images/del.png",
                        "DELOITTE"),
                    demoTopRatedcrs(context,
                        "assets/images/ama.png",
                        "AMAZON"),
                    demoTopRatedcrs(context,
                        "assets/images/cts.png",
                        "CTS"),
                    demoTopRatedcrs(context,
                        "assets/images/tech.png",
                        "HCL TECH",),
                    demoTopRatedcrs(context,
                        "assets/images/ibm.jpg",
                        "IBM",),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget demoTopRatedcrs(BuildContext context, String img, String name,) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PaymentScreen(img: img, course: name, rating: "4.5"), // Assuming you want to navigate to PaymentScreen with a default rating
          ),
        );
      },
      child: Container(
        height: 90,
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

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}