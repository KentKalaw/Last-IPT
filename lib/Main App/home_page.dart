// ignore_for_file: prefer_const_constructors

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
 
 class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _selectedIndex = 0;

  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Color.fromARGB(234, 234, 234, 234),
        child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0,vertical: 15),
        child: GNav(
          backgroundColor: const Color.fromARGB(234, 234, 234, 234),
          color: Color.fromARGB(133, 41, 41, 41),
          activeColor: Color.fromARGB(255, 24, 24, 24),
          tabBackgroundColor: Color.fromARGB(234, 184, 184, 184),
          gap: 10,
          padding: EdgeInsets.all(20),
          tabs: const [
            GButton(icon: Icons.home,
            text: 'Home',),
            GButton(icon: Icons.favorite_border,
            text: 'Favorites'),
            GButton(icon: Icons.search,
            text: 'Search'),
            GButton(icon: Icons.person,
            text: 'Profile'),
            ],
            selectedIndex: _selectedIndex,
              onTabChange: (index) {
                setState(() {
                  _selectedIndex = index;
                });
              },
          ),
            ),
      ),
    );
  }
}