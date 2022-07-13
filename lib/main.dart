import 'package:donor_darah/ui/pages/homepage.dart';
import 'package:donor_darah/ui/pages/main_page.dart';
import 'package:donor_darah/ui/pages/splash_page.dart';
import 'package:donor_darah/ui/pages/welcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
