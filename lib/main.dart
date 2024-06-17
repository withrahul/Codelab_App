// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:codelab_final/theme/theme.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'dart:io';

import 'screens/welcome_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyAXr5hPf5TcZmQzhFtY27OPHOB-IxvkiBQ",
          appId: "1:1060027026222:android:876baec8f0c134fea3c8bf",
          messagingSenderId: "",
          projectId: "code-lab-final"))
      : Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Code Lab.',
      theme: lightMode,
      home: WelcomeScreen(),
    );
  }
}
