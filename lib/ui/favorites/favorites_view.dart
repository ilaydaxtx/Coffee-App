import 'package:coffeeapp/ui/categorybar/cardWidget/cardWidget.dart';
import 'package:coffeeapp/ui/categorybar/controller/categorybar_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FavoritesView extends StatelessWidget {
  FavoritesView({super.key});
  final CategorybarController categorybarController = Get.find<CategorybarController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: Get.width * 0.9,
          height: Get.height * 0.4,
          child: Obx(
            () => ListView.builder(
              itemCount: categorybarController.favoritedCards.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                categorybarController.favoritedCards;
                return Cardwidget(
                  categorybarController: categorybarController,
                  index: index,
                  containerSize: Get.height * 0.25,
                  containerWidthSize: Get.width * 0.5,
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
