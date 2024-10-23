import 'package:coffeeapp/const/colors/appColors.dart';
import 'package:coffeeapp/const/images/image_assets.dart';
import 'package:coffeeapp/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HotdrinksView extends StatelessWidget {
  const HotdrinksView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.4,
      height: Get.height * 0.3,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {},
      ),

      /*  child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: Get.width * 0.5,
            height: Get.height * 0.1,
            decoration: BoxDecoration(
              color: AppColors.backgroundBeige,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.blackColor.withOpacity(0.6),
                  blurRadius: 2,
                  offset: Offset(1, 2),
                ),
              ],
            ),
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.015,
                ),
                ImageUtils().ImageAsset(height: Get.height * 0.2, width: Get.width * 0.4, imagePath: ImageAssets.Americano),
                Container(
                  child: Text("Espresso"),
                )
              ],
            ),
          ),
          SizedBox(
            width: Get.width * 0.01,
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundBeige,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.blackColor.withOpacity(0.6),
                  blurRadius: 2,
                  offset: Offset(1, 2),
                ),
              ],
            ),
            width: Get.width * 0.5,
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.015,
                ),
                ImageUtils().ImageAsset(height: Get.height * 0.2, width: Get.width * 0.4, imagePath: ImageAssets.Cappuccino),
                Container(
                  child: Text("Cappuccino"),
                ),
              ],
            ),
          ),
          SizedBox(
            width: Get.width * 0.01,
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundBeige,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.blackColor.withOpacity(0.6),
                  blurRadius: 2,
                  offset: Offset(1, 2),
                ),
              ],
            ),
            width: Get.width * 0.5,
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.015,
                ),
                ImageUtils().ImageAsset(height: Get.height * 0.2, width: Get.width * 0.4, imagePath: ImageAssets.Frappe),
                Container(
                  child: Text("Frappe"),
                ),
              ],
            ),
          ),
          SizedBox(
            width: Get.width * 0.01,
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundBeige,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.blackColor.withOpacity(0.6),
                  blurRadius: 2,
                  offset: Offset(1, 2),
                ),
              ],
            ),
            width: Get.width * 0.5,
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.015,
                ),
                ImageUtils().ImageAsset(height: Get.height * 0.2, width: Get.width * 0.4, imagePath: ImageAssets.Latte),
                Container(
                  child: Text("Latte"),
                ),
              ],
            ),
          ),
          SizedBox(
            width: Get.width * 0.01,
          ),
          Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundBeige,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: AppColors.blackColor.withOpacity(0.6),
                  blurRadius: 2,
                  offset: Offset(1, 2),
                ),
              ],
            ),
            width: Get.width * 0.5,
            child: Column(
              children: [
                SizedBox(
                  height: Get.height * 0.015,
                ),
                ImageUtils().ImageAsset(height: Get.height * 0.2, width: Get.width * 0.4, imagePath: ImageAssets.Mocca),
                Container(
                  child: Text("Mocca"),
                ),
              ],
            ),
          ),
        ],
      ),
     */
    );
  }
}
