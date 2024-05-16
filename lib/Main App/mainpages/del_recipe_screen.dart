import 'package:flutter/material.dart';
import 'package:finalproj/Main%20App/models/food.dart';
import 'package:finalproj/Main%20App/widgets/del_recipe_appbar.dart';
import 'package:finalproj/Main%20App/widgets/food_card.dart';

class DelRecipeScreen extends StatefulWidget {
  const DelRecipeScreen({super.key});

  @override
  State<DelRecipeScreen> createState() => _DelRecipeScreenState();
}

class _DelRecipeScreenState extends State<DelRecipeScreen> {
  String _query = '';

  List<Food> get _filteredRecipes {
    return _query.isEmpty
        ? foods
        : foods.where((recipe) => recipe.name.toLowerCase().contains(_query)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DelRecipeAppBar(),
                const SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: TextField(
                    decoration: const InputDecoration(
                      labelText: 'Search recipes...',
                      prefixIcon: Icon(Icons.search),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _query = value.toLowerCase();
                      });
                    },
                  ),
                ),
                const SizedBox(height: 20),
                GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                  ),
                  itemBuilder: (context, index) => FoodCard(
                    food: _filteredRecipes[index],
                  ),
                  itemCount: _filteredRecipes.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}