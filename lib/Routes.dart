import 'package:get/get.dart';
import 'package:pas_flutter/pages/login_page.dart';
import 'package:pas_flutter/pages/menu_drawer_page.dart';
import 'package:pas_flutter/menu/profile.dart';

class Routes {
  static const String login= "/loginPage";
  static const String menuDrawer = "/drawer";
  static const String menuProfile = "/menuProfile";

  static final myPages=[
    GetPage(name: login,page: () => LoginPage(),),
    GetPage(name: menuDrawer,page: () => MenuDrawerPage(),),
    GetPage(name: menuProfile,page: () => ProfilePage(),),
  ];
}