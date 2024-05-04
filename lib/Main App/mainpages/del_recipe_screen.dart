import 'package:finalproj/Main%20App/models/food.dart';
import 'package:finalproj/Main%20App/widgets/del_recipe_appbar.dart';
import 'package:finalproj/Main%20App/widgets/food_card.dart';
import 'package:flutter/material.dart';

class DelRecipeScreen extends StatefulWidget {
  const DelRecipeScreen({super.key});

  @override
  State<DelRecipeScreen> createState() => _DelRecipeScreenState();
}

class _DelRecipeScreenState extends State<DelRecipeScreen> {
   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const DelRecipeAppBar(),
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
                    food: foods[index],
                  ),
                  itemCount: foods.length,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}