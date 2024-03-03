import 'package:get/get.dart';
import 'package:newsapp/pages/ArticlePage/articlepage.dart';
import 'package:newsapp/pages/HomePage/homepage.dart';
import 'package:newsapp/pages/SettingPage/settingpage.dart';

class BottomNavigationbarControllor extends GetxController {
  RxInt Index = 0.obs;

  var pages = [Homepage(), ArticlePage(), Settingpage()];
}
