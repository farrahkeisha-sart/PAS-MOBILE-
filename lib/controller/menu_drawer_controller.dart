
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pas_flutter/menu/home.dart';
import 'package:pas_flutter/menu/feat.dart';
import 'package:pas_flutter/menu/profile.dart';


class MenuDrawerController extends GetxController {
  var selectedIndex = 0.obs;

  final List<Widget> listPages = [
    HomePage(),    // index 0
    FeatPage(),
    ProfilePage(), 
    
  ];

  void changePage(int index) {
    selectedIndex.value = index;
  }
}