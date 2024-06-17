import 'package:codelab_final/screens/payment_screen.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../theme/theme.dart';
import 'dashboard_screen.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({super.key});

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
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
                "Our Courses",
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
                    demoTopRatedTr("assets/images/c pro.jpg", "C LANGUAGE",
                        "4.6"),
                    demoTopRatedTr("assets/images/c plus.jpg", "C++ LANGUAGE",
                        "4.0"),
                    demoTopRatedTr("assets/images/java.png","JAVA LANGUAGE",
                    "4.3"),
                    demoTopRatedTr("assets/images/js.png","JAVASCRIPT LANGUAGE",
                        "4.3"),
                    demoTopRatedTr("assets/images/ai.jpg","AI/ML",
                        "4.6"),
                    demoTopRatedTr("assets/images/ms.png","MS EXCEL",
                        "4.3"),
                    demoTopRatedTr("assets/images/me.png","MICROSERVICES",
                        "4.6"),
                    demoTopRatedTr("assets/images/da.png","DATA ANALYST",
                        "4.1"),
                    demoTopRatedTr("assets/images/pr.png","PYTHON LANGUAGE",
                      "4.5"),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget demoTopRatedTr(String img, String course, String rating) {
    var size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => PaymentScreen(img: img, course: course, rating: rating),
          ),
        );
      },
      child: Container(
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
                      course,
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
                      rating,
                      style: TextStyle(
                        color: Color(0xffababab),
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
      ),
    );
  }
}
