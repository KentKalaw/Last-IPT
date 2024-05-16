import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finalproj/Main%20App/models/food.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class FavoritesProvider with ChangeNotifier {
  

final FirebaseFirestore firestore = FirebaseFirestore.instance;
final String userId = FirebaseAuth.instance.currentUser!.uid;
  
    List<Food> _breakfastFavorites = [];
  List<Food> _lunchFavorites = [];
  List<Food> _dinnerFavorites = [];

  List<Food> get breakfastFavorites => _breakfastFavorites;
  List<Food> get lunchFavorites => _lunchFavorites;
  List<Food> get dinnerFavorites => _dinnerFavorites;


   void addFavorite(Food food) {

       DocumentReference userRef = FirebaseFirestore.instance.collection('users').doc(userId);
       userRef.collection('favorites').doc(food.id).set({
        'name': food.name,
        'imagePath': food.imagePath,
        'category': food.category,
        'cal': food.cal,
        'time': food.time,
        'rate': food.rate,
        'reviews': food.reviews,
        'isLiked': food.isLiked,
    });

    if (food.category == "Breakfast") {
      _breakfastFavorites.add(food);
    } else if (food.category == "Lunch") {
      _lunchFavorites.add(food);
    } else if (food.category == "Dinner") {
      _dinnerFavorites.add(food);
    }
    food.isLiked=true;
    notifyListeners();
}


   void removeFavorite(Food food) {

    final firestore = FirebaseFirestore.instance;
    final userId = FirebaseAuth.instance.currentUser!.uid;

    firestore
        .collection('users')
        .doc(userId)
        .collection('favorites')
        .doc(food.id)
        .delete();

     if (food.category == "Breakfast") {
      _breakfastFavorites.remove(food);
    } else if (food.category == "Lunch") {
      _lunchFavorites.remove(food);
    } else if (food.category == "Dinner") {
      _dinnerFavorites.remove(food);
    }
    food.isLiked = false;
    notifyListeners();
   }

  void setFavorites(List<Food> favoriteFoods) {}
}