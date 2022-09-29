import 'package:flutter/material.dart';
import 'package:reverie/screens/MUOB_screen.dart';
import 'package:reverie/screens/driedflowers_screen.dart';
import 'package:reverie/screens/extra_screen.dart';
import 'package:reverie/screens/flower_screen.dart';
import 'package:reverie/screens/home_screen.dart';
import 'package:get/get.dart';
import 'package:reverie/screens/onboarding_screen.dart';
import 'package:reverie/screens/plants_screen.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}


