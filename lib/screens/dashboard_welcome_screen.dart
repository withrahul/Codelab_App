// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:codelab_final/theme/theme.dart';
import 'package:codelab_final/screens/dashboard_screen.dart';

class DashboardWelcomeScreen extends StatelessWidget {
  const DashboardWelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kdeepblue,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      color: kdeepblue,
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(50))),
                  child: Column(
                    children: [
                      Expanded(child: Image.asset("assets/images/welcome.png"))
                    ],
                  ),
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: kdeepblue,
                  child: Container(
                    width: double.infinity,
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(50),
                        )),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Column(
                        children: [
                          Spacer(),
                          Text(
                            "Learning everything",
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Spacer(),
                          Text(
                            "Learn with pleasure with\nus,where you are!",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.black54,
                              wordSpacing: 2.5,
                              height: 1.5,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Spacer(
                            flex: 3,
                          ),
                          Row(
                            //button position
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              MaterialButton(
                                height: 60,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15.0)),
                                color: kdeepblue,
                                onPressed: () {
                                  //home screen path
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder:
                                              (context)
                                          => DashboardScreen()));
                                },
                                child: Text(
                                  "Get Started",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18,
                                      color: Colors.white),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
