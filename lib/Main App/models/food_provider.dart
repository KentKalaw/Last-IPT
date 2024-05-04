import 'package:finalproj/Main%20App/models/food.dart';
import 'package:flutter/foundation.dart';


class FoodProvider extends ChangeNotifier {
  List<Food> _foods = []; // Your food list

  // Initialize with your existing foods
  FoodProvider() {
    _foods = foods; // assuming `foods` is your list of food items
  }

  List<Food> get foods => _foods;

  void toggleLike(Food food) {
    final index = _foods.indexOf(food);
    if (index != -1) {
      _foods[index].isLiked = !_foods[index].isLiked;
      notifyListeners();
    }
  }
}