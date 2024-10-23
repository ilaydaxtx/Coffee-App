import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottombarController extends GetxController {
  RxBool isBottomBarIconActive = false.obs;

  void onTapBottomBarIconToggle() {
    isBottomBarIconActive.value = !isBottomBarIconActive.value;
  }
}
