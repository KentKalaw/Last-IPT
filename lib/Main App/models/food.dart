
// ignore_for_file: camel_case_types

class Food {
  final String id;
  final String name;
  final String imagePath;
  final String category;
  final double cal;
  final double time;
  final double rate;
  final int reviews;
  bool isLiked;
  final List<Ingredient> ingredients;
  final List<instruction> instructions;

  Food({
    required this.id,
    required this.name,
    required this.imagePath,
    required this.category,
    required this.cal,
    required this.time,
    required this.rate,
    required this.reviews,
    required this.isLiked,
    required this.ingredients,
    required this.instructions,
  });

}

class Ingredient {
  final String name;
  final String quantity;

  Ingredient({
    required this.name,
    required this.quantity,
  });
}

class instruction {
  final String instruc;
 

  instruction({
    required this.instruc,
  });
}


final List<Food> foods = [
  Food(
    id: '1',
    name: "Carbonara",
    imagePath: "lib/images/carbonara.jpg",
    category: "Breakfast",
    cal: 307,
    time: 35,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
    ingredients: [
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Knorr Beef Cube", quantity: "1pc."),
      Ingredient(name: "Bacon", quantity: "7strips."),
      Ingredient(name: "Grated Parmesan Cheese", quantity: "6tbsp."),
      Ingredient(name: "Yellow Onion chopped", quantity: "1pc."),
      Ingredient(name: "Garlic minced", quantity: "2 cloves"),
      Ingredient(name: "Ground Nutmeg", quantity: "1/8tsp."),
      Ingredient(name: "Salt", quantity: "1tsp."),
      Ingredient(name: "Water", quantity: "2 quarts"),
    ],
    instructions: [
      instruction(instruc: "Cook the bacon until crispy. Do this by placing each strip in a pan. Cook in medium heat for 2 minutes. Flip the bacon and cook the opposite side for another 2 minutes. Continue performing the same steps until each piece gets crispy. Set aside. Save the bacon grease."),
      instruction(instruc: "Cook the spaghetti by pouring water in a cooking pot. Let boil. Add salt and put the spaghetti into the pot. Cook for 12 minutes or until al dente. Remove the spaghetti Set aside. Save ¼ cup of water used to cook spaghetti."),
      instruction(instruc: "Prepare the carbonara sauce by heating 3 tablespoons of bacon grease. Saute onion and garlic."),
      instruction(instruc: "One the onion softens, pour all-purpose cream into the pan. Stir. Add ¼ cup water."),
      instruction(instruc: "Add Knorr Beef Cube. Stir until well blended."),
      instruction(instruc: "Put chopped bacon and nutmeg into the sauce. Stir."),
      instruction(instruc: "Add the cooked spaghetti. Toss until spaghetti gets totally coated with sauce."),
      instruction(instruc: "Add Parmesan cheese. Toss. Add more bacon."),
      instruction(instruc: "Transfer to a serving plate. Serve and enjoy!"),
    ]
  ),
  Food(
    id: '2',
    name: "Cordon Bleu",
    imagePath: "lib/images/cordonbleu.jpg",
    category: "Lunch",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
    ingredients: [
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
    ],
    instructions: [
      instruction(instruc:"")
    ]
  ),
  Food(
    id: '3',
    name: "Buttered Chicken",
    imagePath: "lib/images/butter-chicken.jpg",
    category: "Dinner",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
    ingredients: [
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
    ],
    instructions: [
      instruction(instruc:"")
    ],
  ),
  Food(
    id: '4',
    name: "Dumplings",
    imagePath: "lib/images/dumplings.jpg",
    category: "Breakfast",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
    ingredients: [
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
    ],
    instructions: [
      instruction(instruc:"")
    ],
  ),
  Food(
    id: '5',
    name: "French Toast",
    imagePath: "lib/images/french-toast.jpg",
    category: "Breakfast",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
    ingredients: [
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
    ],
    instructions: [
      instruction(instruc:"")
    ],
  ),
  Food(
    id: '6',
    name: "Mexican Pizza",
    imagePath: "lib/images/mexican-pizza.jpg",
    category: "Breakfast",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
    ingredients: [
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
    ],
    instructions: [
      instruction(instruc:"")
    ],
  ),
  Food(
    id: '7',
    name: "Beef Steak",
    imagePath: "lib/images/beef-steak.jpg",
    category: "Dinner",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
    ingredients: [
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
      Ingredient(name: "Spaghetti", quantity: "3/4lb."),
    ],
    instructions: [
      instruction(instruc:"")
    ],
  ),
  
];

