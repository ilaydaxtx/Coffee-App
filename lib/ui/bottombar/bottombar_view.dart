import 'package:coffeeapp/const/colors/appColors.dart';
import 'package:coffeeapp/ui/bottombar/bottombar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottombarView extends StatelessWidget {
  BottombarView({super.key});
  BottombarController bottombarController = Get.put(BottombarController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(),
    );
  }
}
