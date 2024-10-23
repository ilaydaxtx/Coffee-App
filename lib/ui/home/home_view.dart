import 'package:coffeeapp/const/colors/appColors.dart';
import 'package:coffeeapp/ui/bottombar/bottombar_controller.dart';
import 'package:coffeeapp/ui/categorybar/controller/categorybar_controller.dart';
import 'package:coffeeapp/ui/favorites/favorites_view.dart';
import 'package:coffeeapp/ui/profile/profile_home_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final CategorybarController categorybarController = Get.find<CategorybarController>();
  final BottombarController bottombarController = Get.put(BottombarController());
  RxInt currentIconIndex = 0.obs;
  List<Widget> bottomBarBody = [
    ProfileHomeView(),
    FavoritesView(),
    Icon(Icons.content_paste),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Obx(
          () => bottomBarBody[currentIconIndex.value],
        ),
        bottomNavigationBar: Obx(
          () => BottomNavigationBar(
            selectedItemColor: AppColors.darkBrown,
            unselectedItemColor: AppColors.mediumBrown,
            currentIndex: currentIconIndex.value,
            onTap: (int newIndex) {
              currentIconIndex.value = newIndex;
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                ),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: "Favorites",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart_checkout_sharp),
                label: "Cart",
              ),
            ],
          ),
        ));
  }
}
