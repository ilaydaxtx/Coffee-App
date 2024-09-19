import 'package:coffeeapp/const/colors/appColors.dart';
import 'package:coffeeapp/ui/headnav/headnav_view.dart';
import 'package:coffeeapp/ui/searchbar/searchbar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          HeadnavView(),
          SizedBox(
            height: Get.height * 0.05,
          ),
          Container(
            width: Get.width * 0.9,
            child: Text(
              "Find the best Coffee to your taste",
              style: TextStyle(
                fontFamily: "SFProText",
                fontWeight: FontWeight.w700,
                fontSize: 25,
                color: AppColors.darkBrown,
              ),
            ),
          ),
          SizedBox(
            height: Get.height * 0.03,
          ),
          SearchbarView(),
        ],
      ),
    );
  }
}
