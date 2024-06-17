import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import '../theme/theme.dart';
import 'course_screen.dart';

class PaymentScreen extends StatelessWidget {
  final String img;
  final String course;
  final String rating;

  PaymentScreen(
      {required this.img, required this.course, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: lightColorScheme.primary,
        title: Text(
          'Code Lab.',
          style: TextStyle(
              fontFamily: 'Poppins', color: lightColorScheme.onSecondary),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(BoxIcons.bx_arrow_back,
                color: lightColorScheme.onSecondary),
            onPressed: () => Navigator.pushAndRemoveUntil(
                (context),
                MaterialPageRoute(builder: (context) => CourseScreen()),
                (route) => false),
          ),
        ),
      ),
      body: Container(
        color: kblue,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 150),
            child: Column(
              children: <Widget>[
                Card(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12.0),
                    child: Image.asset(img, fit: BoxFit.cover),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  course,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  rating,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left: 140),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.language, color: Colors.black),
                      SizedBox(width: 8),
                      Text(
                        'Taught in English',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 120),
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.subtitles, color: Colors.black),
                      SizedBox(width: 8),
                      Text(
                        'Video subtitles available',
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 80),
                Center(
                  child: MaterialButton(
                    height: 60,
                    minWidth: 300,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15.0)),
                    color: kdeepblue,
                    onPressed: () {
                      // Show Snackbar message
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("Enrolled Successfully.."),
                          duration: Duration(
                              seconds:
                              3), // Optional: specify the duration the snackbar will be shown
                        ),
                      );

                      // Navigate to the home screen
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => CourseScreen()));
                    },
                    child: Text(
                      "Enroll Now",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 8),
                Center(
                  child: Text(
                    'Starts May 19',
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
