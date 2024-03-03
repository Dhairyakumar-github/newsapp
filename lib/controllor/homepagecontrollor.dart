import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/controllor/bottomNavigationbarcontrollor.dart';
import 'package:newsapp/pages/HomePage/Widgets/bottomnavigationbar.dart';

class HomePageControllor extends StatelessWidget {
  HomePageControllor({super.key});
  BottomNavigationbarControllor controllor =
      Get.put(BottomNavigationbarControllor());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigator(),
      body: Obx(() => controllor.pages[controllor.Index.value]),
    );
  }
}
