import 'package:coffeeapp/const/colors/appColors.dart';
import 'package:coffeeapp/const/images/image_assets.dart';
import 'package:coffeeapp/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WelcomeView extends StatelessWidget {
  const WelcomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundBeige,
      body: Container(
        width: Get.width,
        height: Get.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageUtils().ImageAsset(height: Get.height * 0.4, width: Get.width * 0.75, imagePath: ImageAssets.RectangleCoffee),
            SizedBox(
              height: Get.height * 0.05,
            ),
            Container(
              width: Get.width * 0.7,
              height: Get.height * 0.3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Stay Focused",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(0, 5),
                          blurRadius: 30,
                        )
                      ],
                      fontFamily: "SFProText",
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      color: AppColors.darkBrown,
                    ),
                  ),
                  SizedBox(
                    height: Get.height * 0.03,
                  ),
                  Text(
                    "Get the cup filled of your choice to stay focused and awake. All kinds of coffees, hot latte, cappucino and more",
                    style: TextStyle(
                      shadows: [
                        Shadow(
                          color: Colors.black87.withOpacity(0.1),
                          offset: Offset(0, 5),
                          blurRadius: 30,
                        )
                      ],
                      fontFamily: "SFProText",
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: AppColors.textColorGrey,
                    ),
                  )
                ],
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: Get.width * 0.3,
                height: Get.height * 0.06,
                decoration: BoxDecoration(
                  color: AppColors.mediumBrown,
                  borderRadius: BorderRadius.circular(50),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Dive in",
                      style: TextStyle(fontFamily: "SFProText", fontWeight: FontWeight.w400, fontSize: 16, color: AppColors.white),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 16,
                      color: AppColors.white,
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
