import 'package:coffeeapp/const/colors/appColors.dart';
import 'package:coffeeapp/ui/categorybar/cardWidget/cardWidget.dart';
import 'package:coffeeapp/ui/categorybar/controller/categorybar_controller.dart';
import 'package:coffeeapp/ui/categorybar/view/categorybar_view.dart';
import 'package:coffeeapp/ui/headnav/headnav_view.dart';
import 'package:coffeeapp/ui/home/cardTap_widget/cardTap_widget.dart';
import 'package:coffeeapp/ui/searchbar/searchbar_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileHomeView extends StatelessWidget {
  ProfileHomeView({super.key});
  CategorybarController categorybarController = Get.find<CategorybarController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeadnavView(),
              SizedBox(
                height: Get.height * 0.05,
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
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
                    SizedBox(
                      height: Get.height * 0.01,
                    ),
                    //hot drinks, cold drinks, tea, dessert category bar
                    CategorybarView(),
                    Obx(
                      () => Container(
                        width: Get.width * 0.9,
                        height: categorybarController.isCategoryActive.value ? Get.height * 0.33 : Get.height * 0,
                        child: ListView.builder(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemCount: categorybarController.hotdrinks.length,
                          itemBuilder: (context, index) {
                            return Cardwidget(
                              categorybarController: categorybarController,
                              index: index,
                              containerSize: Get.height * 0.33,
                              containerWidthSize: Get.width * 0.45,
                            );
                          },
                        ),
                      ),
                    ),
                    TappedCard(),
                  ],
                ),
              ),

              /* BottombarView(), */
              /* HotdrinksView(), */
            ],
          ),
        ),
      ),
    );
  }
}
