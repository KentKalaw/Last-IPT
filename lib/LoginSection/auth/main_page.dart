import "package:finalproj/LoginSection/auth/auth_page.dart";
import "package:finalproj/Main%20App/mainpages/main_screen.dart";
import "package:finalproj/Main%20App/models/favorites_provider.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:provider/provider.dart";

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          // User is logged in, load favorites
          // final user = snapshot.data!;
          // final favoritesService = FavoritesService();
          // favoritesService.loadFavoritesForUser(user.uid, context);

          return HomePage();
        }
        else {
          return AuthPage();
        }
      },
      ),
      
    );
    
  }
}