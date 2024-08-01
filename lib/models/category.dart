class Category {
  final String title;
  final String image;

  Category({
    required this.title,
    required this.image,
  });
}

final List<Category> categories = [
  Category(
    title: "All",
    image: "images/all.png",
  ),
  Category(
    title: "Shoes",
    image: "images/shoes.png",
  ),
  Category(
    title: "Beauty",
    image: "images/beauty.png",
  ),
  Category(
    title: "Women's",
    image: "images/image1.png",
  ),
  Category(
    title: "Men's",
    image: "images/men.png",
  ),
  Category(
    title: "Jewelry",
    image: "images/jewelry.png",
  ),
];
