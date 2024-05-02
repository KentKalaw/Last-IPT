import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final controller;
  final String hintText;
  final bool obscureText;

  const MyTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  controller: controller,
                  obscureText: obscureText,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: Colors.grey.shade600)
                    
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hintText,
                  hintStyle: TextStyle(color: Colors.grey[500])
                ),
              ),
            );

            // Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 25.0),
            //     child: Container(
            //       decoration: BoxDecoration(
            //         color: Colors.grey[200],
            //         border: Border.all(color: Colors.white),
            //         borderRadius: BorderRadius.circular(12),
            //       ),
            //       child: const Padding(
            //         padding: EdgeInsets.only(left: 20.0),
            //         child: TextField(
            //           obscureText: true,
            //           decoration: InputDecoration(
            //             border: InputBorder.none,
            //             hintText: 'Password',
            //           ),
            //         ),
            //       ),
            //     ),
            //   ),
  }
}