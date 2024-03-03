import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:newsapp/controllor/bottomNavigationbarcontrollor.dart';

class MyBottomNavigator extends StatelessWidget {
  MyBottomNavigator({super.key});
  BottomNavigationbarControllor controllor =
      Get.put(BottomNavigationbarControllor());
  // int currentindex = controllor.Index;
  @override
  Widget build(BuildContext context) {
    return Obx(() => Container(
          margin: const EdgeInsets.only(bottom: 10, top: 10),
          height: 60,
          width: 200,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 163, 195, 178),
            borderRadius: BorderRadius.circular(100),
          ),
          child: BottomNavigationBar(
            selectedItemColor: Colors.black,
            currentIndex: controllor.Index.value,
            onTap: (value) {
              //stateState((){
              // currentindex = value;
              //})
              // Get.to()
              controllor.Index.value = value;
              print(value);
            },
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.article),
                label: "Articles",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "settings",
              ),
            ],
          ),
        ));
  }
}
