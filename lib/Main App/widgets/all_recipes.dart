// ignore_for_file: prefer_const_constructors
import 'package:finalproj/Main%20App/mainpages/del_recipe_screen.dart';
import 'package:finalproj/Main%20App/models/food.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';

class DelRecipeList extends StatelessWidget {
  const DelRecipeList({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
               Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Delicious Recipes', style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  ),
                ),
                TextButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>const DelRecipeScreen())),
                 child: Text('View all',
                style: TextStyle(
                  color: Colors.blue,
                     ),
                  ),
                ),
              ],
              ),
              const SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    foods.length,
                     (index) => Container(
                      margin: const EdgeInsets.only(right: 15),
                      width: 200,
                      child: Stack(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: double.infinity,
                                height: 130,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  image: DecorationImage(
                                  image: AssetImage(foods[index].image),
                                  fit: BoxFit.fill,
                                  ),
                                ),
                              ),
                              const SizedBox(height:10),
                              Text(
                                foods[index].name,
                                 style: GoogleFonts.poppins(
                                  fontSize: 14,
                                   fontWeight: FontWeight.bold,
                                   ),
                                ),
                                const SizedBox(height:5),

                                Row(
                                  children: [
                                    const Icon(
                                      Iconsax.flash_1,
                                       size: 18,
                                       color: Colors.grey,
                                       ),
                                       Text("${foods[index].cal} Cal", style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade600,
                                       ),
                                      ),
                                      Text(" • ", style: TextStyle(color: const Color.fromARGB(255, 75, 75, 75)),),
                                      const Icon(
                                      Icons.timer_sharp,
                                       size: 18,
                                       color: Colors.grey,
                                       ),
                                       Text("${foods[index].time} min", style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.grey.shade600,
                                       ),)
                                  ],
                                )
                            ],
                          ),
                          Positioned(
                            top: 1,
                            right: 1,
                            child: IconButton(
                              onPressed: (){},
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                              fixedSize: const Size(30, 30),
                            ),
                            iconSize: 20,
                          icon: const Icon(Iconsax.heart),
                          ),
                         ),
                        ],
                      ),
                     ),
                  ),
                ),
              ),

      ],
    );
  }
}