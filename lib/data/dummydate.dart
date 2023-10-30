import '../model/product_model.dart';

List<Product> dummyProducts = [
  Product(
    id: 1,
    name: 'Stylish Leather Jacket',
    image: 'assets/images/brownjacketgirl.jpg',
    price: 89.99,
    rating: 4.5,
    category: ProductCategory.jacket,
  ),
  Product(
    id: 2,
    name: 'Classic White Shirt',
    image: 'assets/images/brownbufferjacketboy.jpg',
    price: 29.99,
    rating: 4.0,
    category: ProductCategory.shirt,
  ),
  Product(
    id: 3,
    name: 'Casual Blue Jeans',
    image: 'assets/images/darkjacketgirl.jpg',
    price: 39.99,
    rating: 4.2,
    category: ProductCategory.pant,
  ),
  Product(
    id: 4,
    name: 'Graphic T-shirt',
    image: 'assets/images/lightbrownboy.jpg',
    price: 19.99,
    rating: 4.7,
    category: ProductCategory.tShirt,
  ),
  // Add more items with different categories as needed
];
