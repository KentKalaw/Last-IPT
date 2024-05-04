class Food {
  String name;
  String image;
  double cal;
  double time;
  double rate;
  int reviews;
  bool isLiked;

  Food({
    required this.name,
    required this.image,
    required this.cal,
    required this.time,
    required this.rate,
    required this.reviews,
    required this.isLiked,
  });
}

final List<Food> foods = [
  Food(
    name: "Carbonara",
    image: "lib/images/carbonara.jpg",
    cal: 120,
    time: 15,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
  ),
  Food(
    name: "Cordon Bleu",
    image: "lib/images/cordonbleu.jpg",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
  ),

  Food(
    name: "Buttered Chicken",
    image: "lib/images/butter-chicken.jpg",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
  ),
  Food(
    name: "Dumplings",
    image: "lib/images/dumplings.jpg",
    cal: 140,
    time: 25,
    rate: 4.4,
    reviews: 23,
    isLiked: false,
  ),
];