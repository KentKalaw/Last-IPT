
import 'package:finalproj/LoginSection/auth/main_page.dart';
import 'package:finalproj/Main%20App/models/favorites_provider.dart';
import 'package:finalproj/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    ChangeNotifierProvider(
        create: (context) => FavoritesProvider(),
        child: MyApp(),
    ),   
);
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

 
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
      
    );
  }
}
