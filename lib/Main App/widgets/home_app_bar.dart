import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('What are you\ncooking today?', 
        style: GoogleFonts.poppins(
          color: const Color.fromARGB(255, 0, 0, 0),
          fontWeight: FontWeight.bold,
          fontSize: 32,
          ),
        ),
        const Spacer(),
        
      ],
    );
  }
}