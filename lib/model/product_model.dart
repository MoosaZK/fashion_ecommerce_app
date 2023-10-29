class Product {
  final String name;
  final double price;
  final double rating;
  final ProductCategory category; // Add the "category" field

  Product({
    required this.name,
    required this.price,
    required this.rating,
    required this.category, // Include the "category" in the constructor
  });
}

enum ProductCategory {
  jacket,
  shirt,
  pant,
  tShirt,
}
