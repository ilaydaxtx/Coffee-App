import 'package:coffeeapp/const/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeadnavView extends StatelessWidget {
  const HeadnavView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        margin: EdgeInsets.fromLTRB(Get.width * 0.01, Get.height * 0.05, Get.width * 0.01, 0),
        width: Get.width * 0.9,
        height: Get.height * 0.06,
        decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(20), boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.4),
            blurRadius: 5,
          )
        ]),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.dataset,
                color: AppColors.mediumBrown,
              ),
            ),
            Icon(
              Icons.person,
              color: AppColors.mediumBrown,
            )
          ],
        ),
      ),
    );
  }
}
