// ignore_for_file: prefer_const_constructors
import 'package:finalproj/Main%20App/mainpages/del_recipe_screen.dart';
import 'package:finalproj/Main%20App/widgets/all_recipes.dart';
import 'package:finalproj/Main%20App/widgets/categories.dart';
import 'package:finalproj/Main%20App/widgets/home_app_bar.dart';
import 'package:finalproj/Main%20App/models/food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCat = 'All';

  List<Food> get filteredFoods {
    if (currentCat == 'All') {
      return foods;
    } else {
      return foods.where((food) => food.category == currentCat).toList();
    }
  }

  void onCategorySelected(String category) {
    setState(() {
      currentCat = category;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: Text(
          'Home',
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const HomeAppBar(),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DelRecipeScreen()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    height: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('lib/images/explore-final.png'),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Text(
                  'Categories',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 30),
                Categories(
                  currentCat: currentCat,
                  onCategorySelected: onCategorySelected,
                ),
                const SizedBox(height: 35),
                DelRecipeList(foods: filteredFoods),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
