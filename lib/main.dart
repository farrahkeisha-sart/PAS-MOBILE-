import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pas_flutter/Routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PAS Flutter',
      initialRoute: Routes.,
      getPages: Routes.myPages,
     

    );
  }
}
