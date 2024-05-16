// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:finalproj/constant.dart';
import 'package:finalproj/Main App/models/food.dart';
import 'package:google_fonts/google_fonts.dart';

class CookingInstructionsScreen extends StatelessWidget {
  final Food recipe;

  const CookingInstructionsScreen({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: buildBottomNavigationBar(context),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            buildImageStack(context),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    recipe.name,
                    style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                   Text(
                    "Step by step instructions",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 20),
                  buildInstruction(context),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImageStack(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.width - 20,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(recipe.imagePath),
              fit: BoxFit.fill,
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
                icon: const Icon(Icons.chevron_left),
              ),
              const Spacer(),
            ],
          ),
        ),
        Positioned(
          left: 0,
          right: 0,
          bottom: 0,
          child: Container(
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

  Widget buildInstruction(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.4, 
      child: ListView.builder(
        itemCount: recipe.instructions.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              child: Text('${index + 1}'),
            ),
            title: Text(
              recipe.instructions[index].instruc,
              style: GoogleFonts.poppins(fontSize: 16),
            ),
          );
        },
      ),
    );
  }

  Widget buildBottomNavigationBar(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            flex: 6,
            child: ElevatedButton(
              onPressed: () => Navigator.pop(context),
              style: ElevatedButton.styleFrom(
                backgroundColor: kprimaryColor,
                foregroundColor: Colors.white,
              ),
              child: const Text("Done"),
            ),
          ),
          const SizedBox(width: 10),
        ],
      ),
    );
  }
}