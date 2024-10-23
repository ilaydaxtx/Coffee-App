import 'package:coffeeapp/const/colors/appColors.dart';
import 'package:coffeeapp/ui/categorybar/controller/categorybar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategorybarView extends StatelessWidget {
  CategorybarView({super.key});
  final CategorybarController categorybarController = Get.find<CategorybarController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      height: Get.height * 0.1,
      decoration: BoxDecoration(color: AppColors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Obx(
            () => GestureDetector(
              onTap: () {
                categorybarController.onTapActivateCategory();
              }, //TODO:show hot drinks view and change color of text if selected
              child: Text(
                "Hot Drinks",
                style: TextStyle(color: categorybarController.isCategoryActive.value ? AppColors.mediumBrown : AppColors.textColorGrey), //isActive change color gibi bişe ekle
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              categorybarController.onTapActivateCategory();
            }, //show cold drinks view
            child: Text(
              "Cold Drinks",
              style: TextStyle(color: AppColors.textColorGrey),
            ),
          ),
          GestureDetector(
            onTap: () {}, //show tea view
            child: Text(
              "Tea",
              style: TextStyle(color: AppColors.textColorGrey),
            ),
          ),
          GestureDetector(
            onTap: () {}, //show dessert view
            child: Text(
              "Dessert",
              style: TextStyle(color: AppColors.textColorGrey),
            ),
          ),
        ],
      ),
    );
  }
}
