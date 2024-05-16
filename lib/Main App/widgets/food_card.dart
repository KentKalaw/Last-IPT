import 'package:finalproj/Main%20App/mainpages/recipe_screen.dart';
import 'package:finalproj/Main%20App/models/favorites_provider.dart';
import 'package:finalproj/Main%20App/models/food.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:iconsax/iconsax.dart';
import 'package:firebase_storage/firebase_storage.dart';

class FoodCard extends StatefulWidget {
  final Food food;
  const FoodCard({super.key, required this.food});
  

  @override
  State<FoodCard> createState() => _FoodCardState();
}

class _FoodCardState extends State<FoodCard> {
  
  
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => RecipeScreen(food: widget.food),
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage(widget.food.imagePath),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  widget.food.name,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Iconsax.flash_1,
                      size: 18,
                      color: Colors.grey,
                    ),
                    Text(
                      "${widget.food.cal} Cal",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                    const Text(
                      " · ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    const Icon(
                      Iconsax.clock,
                      size: 18,
                      color: Colors.grey,
                    ),
                    Text(
                      "${widget.food.time} min",
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Icon(Iconsax.star5,
                        color: Colors.yellow.shade700, size: 20),
                    const SizedBox(width: 5),
                    Text(
                      "${widget.food.rate}/5",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade600,
                      ),
                    ),
                    const SizedBox(width: 5),
                    Text(
                      "(${widget.food.reviews} Reviews)",
                      style: TextStyle(
                        fontSize: 12,
                        color: Colors.grey.shade400,
                      ),
                    )
                  ],
                )
              ],
            ),
            Positioned(
    top: 1,
    right: 1,
    child: IconButton(
        style: IconButton.styleFrom(
         backgroundColor: Colors.white,
         fixedSize: const Size(30, 30),
         ),
        onPressed: () {
            final favoritesProvider = Provider.of<FavoritesProvider>(context, listen: false);
            
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
            )
          ],
        ),
      ),
    );
  }
}