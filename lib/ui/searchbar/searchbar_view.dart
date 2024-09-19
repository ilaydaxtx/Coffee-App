import 'package:coffeeapp/const/colors/appColors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchbarView extends StatelessWidget {
  const SearchbarView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.9,
      height: Get.height * 0.06,
      child: Row(
        children: [
          GestureDetector(
            onTap: () {},
            child: Container(
              width: Get.width * 0.7,
              /* height: Get.height * 0.1, */
              decoration: BoxDecoration(color: AppColors.white, borderRadius: BorderRadius.circular(18), boxShadow: [
                BoxShadow(
                  color: Colors.black26.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 2),
                )
              ]),
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: Get.width * 0.2,
              height: Get.height * 0.2,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.mediumBrown, /* boxShadow: [
                BoxShadow(
                  color: Colors.black26.withOpacity(0.2),
                  spreadRadius: 3,
                  blurRadius: 3,
                  offset: Offset(0, 2),
                )
              ] */
              ),
              child: Icon(
                Icons.tune,
                color: AppColors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
