enum ProductCategory { jacket, shirt, pant, tShirt }

class Product {
  final int id;
  final String name;
  final String image;
  final double price;
  final double rating;
  final ProductCategory category;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.rating,
    required this.category,
  });
}
