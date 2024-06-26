
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
    cal: 522,
    time: 140,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
    ingredients: [
      Ingredient(name: "Boneless, skinless chicken breasts", quantity: "4 each"),
      Ingredient(name: "Salt, to taste", quantity: "1tsp."),
      Ingredient(name: "Pepper, to taste", quantity: "1tsp."),
      Ingredient(name: "Garlic powder", quantity: "1tbsp."),
      Ingredient(name: "Onion powder", quantity: "1tbsp."),
      Ingredient(name: "Swiss cheese", quantity: "16 slices"),
      Ingredient(name: "Ham, thinly sliced", quantity: "½ lb (225g)"),
      Ingredient(name: "Peanut oil, or vegetable oil, for frying", quantity: "1 bottle"),
      Ingredient(name: "All-purpose flour", quantity: "1 cup"),
      Ingredient(name: "Eggs, beaten", quantity: "4pcs."),
      Ingredient(name: "Panko bread crumbs", quantity: "2 cups"),
    ],
    instructions: [
      instruction(instruc:"Sprinkle the chicken breasts with salt, pepper, garlic powder, and onion powder, tossing to coat evenly."),
      instruction(instruc:"On a cutting board, place a chicken breast between two sheets of plastic wrap and pound until about ½ inch (1 cm) thick with a meat mallet, rolling pin, or heavy pan."),
      instruction(instruc:"Remove the plastic wrap and place 2 slices of Swiss cheese, then 2 slices of ham, then another layer of Swiss cheese, and another layer of ham. Evenly roll the chicken and place onto a new sheet of plastic wrap."),
      instruction(instruc:"Wrap the chicken in the plastic wrap tightly and use the excess plastic on the sides to twist, firming up the roll of chicken cordon bleu as you work. Tie the excess plastic. Repeat with the remaining ingredients, then chill the rolls in the fridge to set for 30 minutes."),
      instruction(instruc:"Meanwhile, preheat a tall-sided pan with 2 inches (5 cm) of oil to 325°F (170°C)."),
      instruction(instruc:"After the rolls are set, prepare 2 separate large, wide dishes with the flour, beaten egg, and bread crumbs. Dredge the chicken first in the flour, then the egg, and then bread crumbs."),
      instruction(instruc:"Place the breaded chicken cordon bleu in the oil and cook for about 5 minutes per side, or until the outside is an even golden brown. If a good color is achieved and the chicken’s center is still not 165°F (75°C), place the chicken cordon bleu on a wire rack set over a baking sheet and finish the chicken in the oven at 325°F (170°C) until that temperature is reached."),
      instruction(instruc:"Meanwhile, prepare the sauce. In a 1 ½-quart saucepan over medium heat, melt the butter and cook the garlic until soft. Add the flour and whisk for 1 minute."),
      instruction(instruc:"Add the milk and whisk until fully combined with the roux and no lumps remain. Continue whisking until the mixture comes to a simmer and has thickened."),
      instruction(instruc:"Add the mustard, Parmesan cheese, salt, and pepper and whisk to combine. Remove the pan from the heat."),
      instruction(instruc:"Slice the chicken and serve drizzled with Dijon sauce."),
      instruction(instruc:"Enjoy!"),
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

