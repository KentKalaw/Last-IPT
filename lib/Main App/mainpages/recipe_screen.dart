import 'package:finalproj/Main%20App/models/food.dart';
import 'package:flutter/cupertino.dart';

class RecipeScreen extends StatefulWidget {
  final Food food;
  const RecipeScreen({super.key, required this.food});

  @override
  State<RecipeScreen> createState() => _RecipeScreenState();
}

class _RecipeScreenState extends State<RecipeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}