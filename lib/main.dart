import 'package:coffeeapp/ui/welcome/welcome_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/welcomeView",
      getPages: [GetPage(name: "/welcomeView", page: () => WelcomeView())],
    );
  }
}
