// ignore_for_file: prefer_const_constructors

import 'package:finalproj/Main%20App/models/favorites_provider.dart';
import 'package:finalproj/Main%20App/models/food.dart';
import 'package:finalproj/Main%20App/widgets/food_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class FavoritesScreen extends StatefulWidget {
  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final String _breakfastCategory = 'Breakfast';
  final String _lunchCategory = 'Lunch';
  final String _dinnerCategory = 'Dinner';

  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);
    final breakfastFavorites = favoritesProvider.breakfastFavorites;
    final lunchFavorites = favoritesProvider.lunchFavorites;
    final dinnerFavorites = favoritesProvider.dinnerFavorites;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: Text(
          'Favorites',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildCategoryList(_breakfastCategory, breakfastFavorites),
            SizedBox(height: 25),
            _buildCategoryList(_lunchCategory, lunchFavorites),
            SizedBox(height: 25),
            _buildCategoryList(_dinnerCategory, dinnerFavorites),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryList(String category, List<Food> favorites) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Text(
            category,
            style: GoogleFonts.poppins(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 8),
        favorites.isEmpty
            ? Padding(
                padding: const EdgeInsets.symmetric(vertical: 85),
                child: Text(
                  'No favorites yet',
                  style: GoogleFonts.poppins(fontSize: 16),
                ),
              )
            : Container(
                height: 190,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(bottom: 8),
                  children: favorites.map((food) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 6),
                      child: SizedBox(
                        width: 190,
                        child: FoodCard(food: food),
                      ),
                    );
                  }).toList(),
                ),
              ),
        SizedBox(height: 20), // Adjust spacing as needed
      ],
    );
  }
}