import 'package:coffeeapp/const/images/image_assets.dart';
import 'package:coffeeapp/ui/categorybar/drinks_model/drinks_model.dart';
import 'package:get/get.dart';

class CategorybarController extends GetxController {
  RxBool selectedCategory = false.obs;
  RxBool isCategoryActive = false.obs;

  /* Future<Function()?>? onTapDrinkCardDetail({required DrinksModel drinksModel}) async {
    selectedCategory.value = drinksModel;
    Get.to(CategorybarController)
  } */

///////////////////////
  RxBool isCardFavorited = false.obs;
  RxBool isCardAddedToCart = false.obs;

  RxList favoritedCards = [].obs;
  RxList addedToCart = [].obs;

  void isCardFavoritedToggler(int index) {
    /* final hotdrink = hotdrinks.firstWhere((drink) => drink.id == drinkId); */
    isCardFavorited.value = !isCardFavorited.value;
    if (isCardFavorited.value) {
      favoritedCards.add(hotdrinks[index]);
    } else {
      favoritedCards.remove(hotdrinks[index]);
    }
  }

  void isCardAddedToCartToggler(int index) {
    isCardAddedToCart.value = !isCardAddedToCart.value;
    if (isCardAddedToCart.value) {
      addedToCart.add(hotdrinks[index].id);
    }
  }
  ///////////////

  void onTapSelectCategory() {
    selectedCategory.value = !selectedCategory.value;
  }

  void onTapActivateCategory() {
    isCategoryActive.value = !isCategoryActive.value;
  }

  var hotdrinks = <DrinksModel>[
    DrinksModel(
      id: 1,
      price: 80,
      imagePath: ImageAssets.Americano,
      name: "Americano",
    ),
    DrinksModel(
      id: 2,
      price: 150,
      imagePath: ImageAssets.Cappuccino,
      name: "Cappuccino",
    ),
    DrinksModel(
      id: 3,
      price: 140,
      imagePath: ImageAssets.Frappe,
      name: "Frappe",
    ),
    DrinksModel(
      id: 4,
      price: 90,
      imagePath: ImageAssets.Latte,
      name: "Latte",
    ),
    DrinksModel(
      id: 5,
      price: 130,
      imagePath: ImageAssets.Mocca,
      name: "Mocca",
    ),
  ];

  var coldDrinks = <DrinksModel>[
    DrinksModel(
      id: 6,
      price: 300,
      imagePath: ImageAssets.ColdDrink,
      name: "cold drink",
    ),
  ];
}
