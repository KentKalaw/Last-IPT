import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:finalproj/components/square_tile.dart';
import 'package:finalproj/components/textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  final VoidCallback showLoginPage;
  const RegisterPage({super.key, required this.showLoginPage});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {

  final _firstnameController = TextEditingController();
  final _lastnameController = TextEditingController();
  final _usernameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

@override
  void dispose() {
    _firstnameController.dispose();
    _lastnameController.dispose();
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  Future signUp() async {
    if (passwordConfirmed()) {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: _emailController.text.trim(),
       password: _emailController.text.trim(),
       );

       // 
    addUserDetails(
      _firstnameController.text.trim(),
      _lastnameController.text.trim(),
      _usernameController.text.trim(),
      _emailController.text.trim(),
    );

    }
  }

  Future addUserDetails(String firstName, lastname, username, email) async {
    await FirebaseFirestore.instance.collection('users').add({
      'first name': firstName,
      'last name': lastname,
      'username': username,
      'email': email,
    });
  }

  bool passwordConfirmed() {
    if(_passwordController.text.trim() == _confirmPasswordController.text.trim()) {
      return true;
    }
    else {
      return false;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // Hello
                Text(
                  'Hello There!',
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  'Register below with your details!',
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 30),
            
                 
                // first name text field
                 MyTextField(
                    controller: _firstnameController,
                    hintText: 'Enter First name',
                    obscureText: false,
                  ),
            
                const SizedBox(height: 15),

                MyTextField(
                    controller: _lastnameController,
                    hintText: 'Enter Last name',
                    obscureText: false,
                  ),
            
                const SizedBox(height: 15),

                MyTextField(
                    controller: _usernameController,
                    hintText: 'Enter Username',
                    obscureText: false,
                  ),
            
                const SizedBox(height: 15),

                MyTextField(
                    controller: _emailController,
                    hintText: 'Enter Email',
                    obscureText: false,
                  ),

                  const SizedBox(height: 15),

                // Password text field
                 MyTextField(
                    controller: _passwordController,
                    hintText: 'Enter Password',
                    obscureText: true,
                  ),
                const SizedBox(height: 15),
                   MyTextField(
                    controller: _confirmPasswordController,
                    hintText: 'Confirm Password',
                    obscureText: true,
                  ),
                const SizedBox(height: 15),
            
                //forgot pass
            
            
                // Sign in button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: GestureDetector(
                    onTap: signUp,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Center(
                        child: Text(
                          'Sign Up',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
            
            
                // Not yet a user? Sign up now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: widget.showLoginPage,
                      child: const Text(
                        ' Sign in now',
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
            
                const SizedBox(height: 30),
                  
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        'Or continue with',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ),
                    
                        Expanded(
                          child: Divider(
                            thickness: 0.5,
                            color: Colors.grey[400],
                          ),
                        ),
                    ],
                                ),
                  ),
            
                  const SizedBox(height: 30),
            
                  const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // google
                    SquareTile(imagePath: 'lib/images/the-logo.png'),
              
                    SizedBox(width: 10),
                    //apple
                    SquareTile(imagePath: 'lib/images/apple-logo.png'),
                
                ],
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}