// ignore_for_file: prefer_const_constructors, unused_field, unnecessary_string_interpolations

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:codelab_final/screens/placements_screen.dart';
import 'package:codelab_final/screens/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:codelab_final/theme/theme.dart';

import 'alumni_screen.dart';
import 'course_screen.dart';
import 'dashboard_welcome_screen.dart';
import 'teachers_screen.dart';

Future<String?> printUsername() async {
  final user = FirebaseAuth.instance.currentUser;
  final uid = user!.uid;

  final firestore = FirebaseFirestore.instance;
  final username = await firestore
      .collection('users')
      .doc(uid)
      .get()
      .then((value) => value['name'] as String?);

  return username;
}

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _MyDashboardScreen();
}

class _MyDashboardScreen extends State<DashboardScreen> {
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
            icon: Icon(BoxIcons.bx_menu_alt_left,
                color: lightColorScheme.onSecondary),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.exit_to_app, color: lightColorScheme.onSecondary),
            onPressed: () => Navigator.pushAndRemoveUntil(
                (context),
                MaterialPageRoute(builder: (context) => WelcomeScreen()),
                (route) => false),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xFF37A1FF),
                image: DecorationImage(
                  image: AssetImage("assets/images/bg.png"),
                  fit: BoxFit.cover,
                ),
              ),
              child: FutureBuilder<String?>(
                future: printUsername(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return CircularProgressIndicator(); // Show a loading indicator while waiting for the future to complete
                  } else if (snapshot.hasError) {
                    return Text('Error: ${snapshot.error}');
                  } else if (snapshot.hasData) {
                    return Text(
                      'Welcome\n\n\n ${snapshot.data}',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),
                    );
                  } else {
                    return Text(
                      'Welcome \nBack',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),
                    );
                  }
                },
              ),
            ),
            ListTile(
              leading: Icon(BoxIcons.bx_home_alt),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()),
                  (route) => false,
                );
              },
            ),
          ],
        ),
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 30),
        children: [
          Image.asset('assets/images/bg.png', width: 400, height: 300),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: GridView.count(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              crossAxisSpacing: 40,
              mainAxisSpacing: 30,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushAndRemoveUntil(
                      (context),
                      MaterialPageRoute(builder: (context) => TeachersScreen()),
                      (route) => false),
                  child: itemDashboard(
                    'Teachers',
                    Image.asset(
                      'assets/images/finance.png',
                      width: 50,
                      height: 50,
                    ),
                    lightColorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushAndRemoveUntil(
                      (context),
                      MaterialPageRoute(builder: (context) => CourseScreen()),
                      (route) => false),
                  child: itemDashboard(
                    'Courses',
                    Image.asset(
                      'assets/images/graphics.png',
                      width: 50,
                      height: 50,
                    ),
                    lightColorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushAndRemoveUntil(
                      (context),
                      MaterialPageRoute(
                          builder: (context) => PlacementsScreen()),
                      (route) => false),
                  child: itemDashboard(
                    'Placements',
                    Image.asset(
                      'assets/images/programming'
                      '.png',
                      width: 50,
                      height: 50,
                    ),
                    lightColorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.pushAndRemoveUntil(
                      (context),
                      MaterialPageRoute(builder: (context) => AlumniScreen()),
                      (route) => false),
                  child: itemDashboard(
                    'Alumni',
                    Image.asset(
                      'assets/images/ux.png',
                      width: 50,
                      height: 50,
                    ),
                    lightColorScheme.primary,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  itemDashboard(String title, Image image, Color background) => Container(
        decoration: BoxDecoration(
            color: lightColorScheme.primary,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                  offset: const Offset(0, 5),
                  color: Color(0xFF1A1C18).withOpacity(.2),
                  spreadRadius: 2,
                  blurRadius: 5)
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: background,
              ),
              child: image,
            ),
            const SizedBox(height: 8),
            Text(title,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w600)),
          ],
        ),
      );
}
