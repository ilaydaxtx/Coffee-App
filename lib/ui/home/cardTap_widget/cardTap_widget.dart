import 'package:coffeeapp/const/colors/appColors.dart';
import 'package:coffeeapp/const/images/image_assets.dart';
import 'package:coffeeapp/utils/image_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class TappedCard extends StatelessWidget {
  const TappedCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: GestureDetector(
        onTap: () {
          debugPrint("card tapped");
        },
        child: Container(
          width: Get.width * 0.9,
          height: Get.height * 0.1,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(image: AssetImage("assets/wideCoffeepic.jpg"), fit: BoxFit.cover),
          ),
          child: Text(
            "Click to purchase our specials",
            style: TextStyle(
              fontFamily: "SFProText",
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: AppColors.white.withOpacity(0.7),
            ),
          ),
        ),
      ),
    );
  }
}
