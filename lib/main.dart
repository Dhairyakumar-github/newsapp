import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/controllor/bottomNavigationbarcontrollor.dart';
import 'package:newsapp/controllor/homepagecontrollor.dart';
import 'package:newsapp/pages/HomePage/homepage.dart';
// import 'package:newsapp/HomePage/homepage.dart';
import 'package:newsapp/trialpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePageControllor(),
    );
  }
}
