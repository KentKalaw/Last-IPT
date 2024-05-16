// ignore_for_file: unnecessary_string_interpolations

import 'package:finalproj/Main%20App/mainpages/cooking_screen.dart';
import 'package:finalproj/Main%20App/models/favorites_provider.dart';
import 'package:finalproj/Main%20App/models/food.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:finalproj/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:provider/provider.dart';

class RecipeScreen extends StatefulWidget {
  final Food food;
  const RecipeScreen({super.key, required this.food});

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    final favoritesProvider = Provider.of<FavoritesProvider>(context);

    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: buildBottomNavigationBar(favoritesProvider),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildImageStack(),
            Center(
              child: Container(
                width: 50,
                height: 5,
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 10),
                  buildCaloriesAndTimeRow(),
                  const SizedBox(height: 10),
                  buildRatingRow(),
                  const SizedBox(height: 20),
                  const Text(
                    "Ingredients",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  buildIngredientList(),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageStack() {
    return Stack(
      children: [
        Positioned(
          child: Container(
            height: MediaQuery.of(context).size.width - 20,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(widget.food.imagePath),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        Positioned(
          top: 40,
          left: 10,
          right: 10,
          child: Row(
            children: [
              IconButton(
                onPressed: () => Navigator.pop(context),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  fixedSize: const Size(50, 50),
                ),
                icon: const Icon(CupertinoIcons.chevron_back),
              ),
              const Spacer(),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          top: MediaQuery.of(context).size.width - 50,
          child: Container(
            width: double.infinity,
            padding: const EdgeInsets.all(20),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20),
              ),
            ),
            child: const SizedBox(),
          ),
        ),
      ],
    );
  }

  Widget buildCaloriesAndTimeRow() {
    return Row(
      children: [
        const Icon(Icons.local_fire_department),
        const SizedBox(width: 5),
        Text(
          "${widget.food.cal} kcal",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 20),
        const Icon(Icons.access_time),
        const SizedBox(width: 5),
        Text(
          "${widget.food.time} min",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget buildRatingRow() {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amber),
        const SizedBox(width: 5),
        Text(
          "${widget.food.rate} (${widget.food.reviews} Reviews)",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget buildIngredientList() {
    return Column(
      children: widget.food.ingredients.map((ingredient) {
        return Column(
          children: [
            Row(
              children: [
               
                  
                
                const SizedBox(width: 10),
                Text(
                  ingredient.name,
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    
                  ),
                ),
                const Spacer(),
                Text(
                  "${ingredient.quantity}",
                  style: GoogleFonts.poppins(
                    fontSize: 15,
                    
                  ),
                ),
              ],
            ),
            const Divider(
              height: 20,
              color: Colors.grey,
            ),
          ],
        );
      }).toList(),
    );
  }

  Widget buildBottomNavigationBar(FavoritesProvider favoritesProvider) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: ElevatedButton(
             onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CookingInstructionsScreen(recipe: widget.food),
                    ),
                  );
             },
              style: ElevatedButton.styleFrom(
                backgroundColor: kprimaryColor,
                foregroundColor: Colors.white,
              ),
              child: const Text("Start Cooking"),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: IconButton(
              style: IconButton.styleFrom(
                backgroundColor: Colors.white,
                fixedSize: const Size(30, 30),
              ),
              onPressed: () {
                setState(() {
                  if (widget.food.isLiked) {
                    widget.food.isLiked = false;
                    favoritesProvider.removeFavorite(widget.food);
                  } else {
                    widget.food.isLiked = true;
                    favoritesProvider.addFavorite(widget.food);
                  }
                });
              },
              icon: Icon(
                widget.food.isLiked ? Iconsax.heart5 : Iconsax.heart,
                color: widget.food.isLiked ? Colors.red : Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}