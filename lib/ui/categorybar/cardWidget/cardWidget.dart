import 'package:coffeeapp/const/colors/appColors.dart';
import 'package:coffeeapp/const/images/image_assets.dart';
import 'package:coffeeapp/ui/categorybar/controller/categorybar_controller.dart';
import 'package:coffeeapp/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Cardwidget extends StatelessWidget {
  Cardwidget({super.key, required this.categorybarController, required this.index, required this.containerSize, required this.containerWidthSize});
  CategorybarController categorybarController;
  final int index;
  final double containerSize;
  final double containerWidthSize;

  @override
  Widget build(BuildContext context) {
    print(categorybarController.hotdrinks.length);

    return GestureDetector(
      onTap: () {},
      child: Container(
        width: containerWidthSize,
        height: containerSize,
        margin: EdgeInsets.only(right: Get.width * 0.01),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.mediumBrown.withOpacity(0.4), width: Get.width * 0.007),
          color: AppColors.white,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              offset: Offset(1, 5),
              color: Colors.black.withOpacity(0.1),
              spreadRadius: 1,
              blurRadius: 1,
            ),
          ],
        ),
        child: Column(
          /* ainAxisAlignment: MainAxisAlignment.spaceBetween, */
          children: [
            SizedBox(
              height: Get.height * 0.02,
            ),
            ImageUtils().ImageAsset(height: Get.height * 0.18, width: Get.width * 0.37, imagePath: categorybarController.hotdrinks[index].imagePath),
            SizedBox(
              height: Get.height * 0.01,
            ),
            Container(
              width: Get.width * 0.37,
              height: Get.height * 0.04,
              child: Text(
                categorybarController.hotdrinks[index].name,
                style: TextStyle(color: AppColors.textColorGrey, fontFamily: "SFProText", fontWeight: FontWeight.w700, fontSize: 20, shadows: [
                  Shadow(
                    offset: Offset(0, 1),
                    color: AppColors.blackColor.withOpacity(0.3),
                    blurRadius: 1,
                  )
                ]),
              ),
            ),
            SizedBox(
              height: Get.height * 0.001,
            ),
            Row(
              children: [
                SizedBox(
                  width: Get.width * 0.04,
                ),
                Container(
                  width: Get.width * 0.2,
                  height: Get.height * 0.03,
                  /* decoration: BoxDecoration(color: Colors.red), */
                  /* alignment: Alignment.center, */
                  child: Text(
                    "\$ ${categorybarController.hotdrinks[index].price}",
                    style: TextStyle(color: AppColors.textColorGrey, fontFamily: "SFProText", fontWeight: FontWeight.w700, shadows: [
                      Shadow(
                        color: AppColors.blackColor.withOpacity(0.1),
                        offset: Offset(1, 2),
                        blurRadius: 0,
                      )
                    ]),
                  ),
                ),
                SizedBox(
                  width: Get.width * 0.03,
                ),
                Container(
                  width: Get.width * 0.1,
                  margin: EdgeInsets.only(left: Get.width * 0.043),
                  decoration: BoxDecoration(
                      color: AppColors.mediumBrown.withOpacity(0.8),
                      border: Border.all(color: AppColors.mediumBrown),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      boxShadow: [
                        BoxShadow(
                          offset: Offset(1, 5),
                          blurRadius: 5,
                          color: AppColors.blackColor.withOpacity(0.5),
                        )
                      ]),
                  child: IconButton(
                    onPressed: () {
                      categorybarController.isCardFavoritedToggler(index);
                    }, //TODO:
                    icon: Icon(Icons.add),
                    iconSize: 20,
                    color: AppColors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
