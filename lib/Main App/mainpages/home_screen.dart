// ignore_for_file: prefer_const_constructors
import 'package:finalproj/Main%20App/widgets/all_recipes.dart';
import 'package:finalproj/Main%20App/widgets/categories.dart';
import 'package:finalproj/Main%20App/widgets/home_app_bar.dart';
import 'package:finalproj/Main%20App/widgets/home_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String currentCat="All";



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(child: SingleChildScrollView(
        child: Padding(padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HomeAppBar(),
            const SizedBox(height: 20),
            const HomeSearchBar(),
            const SizedBox(height:20),
            Container(
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
            const SizedBox(height:20),
            Text(
              'Categories',
              style: GoogleFonts.poppins(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              ),
            ),
            const SizedBox(height:20),
            Categories(currentCat: currentCat),
            const SizedBox(height:20),
            const DelRecipeList(),
              ],
        ),
        
        ),
       ),
      ),
    );
  }
}

