import 'package:finalproj/Main%20App/models/category.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:finalproj/constant.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
    required this.currentCat,
    required this.onCategorySelected,
  });

  final String currentCat;
  final Function(String) onCategorySelected;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          categories.length,
          (index) => GestureDetector(
            onTap: () {
              onCategorySelected(categories[index]);
            },
            child: Container(
              decoration: BoxDecoration(
                color: currentCat == categories[index]
                    ? kprimaryColor
                    : Color.fromARGB(255, 206, 206, 206),
                borderRadius: BorderRadius.circular(25),
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              margin: const EdgeInsets.only(right: 20),
              child: Text(
                categories[index],
                style: GoogleFonts.poppins(
                  color: currentCat == categories[index]
                      ? Colors.white
                      : Colors.grey.shade600,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}