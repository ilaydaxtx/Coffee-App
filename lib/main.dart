import 'package:coffeeapp/ui/categorybar/controller/categorybar_controller.dart';
import 'package:coffeeapp/ui/welcome/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  CategorybarController categorybarController = Get.put(CategorybarController());
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/welcomeView",
      getPages: [GetPage(name: "/welcomeView", page: () => WelcomeView())],
    );
  }
}
