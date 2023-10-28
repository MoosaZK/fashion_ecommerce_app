import 'package:fashion_ecommerce_app/model/product_model.dart';
import 'package:flutter/material.dart';

class FlashProductCards extends StatelessWidget {
  const FlashProductCards(
      {super.key, required this.product, required this.image});
  final String image;
  final Product product;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: SizedBox(
                // Set the width and height to make a square container
                height: 150, // Adjust the size as needed
                child: Image.asset(
                  image,
                  fit:
                      BoxFit.cover, // Choose the appropriate fit for your image
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey[300]),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.brown,
                  )),
            )
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  product.name,
                  style: const TextStyle(
                      fontSize: 13, fontWeight: FontWeight.bold),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      product.rating.toString(),
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                    )
                  ],
                )
              ],
            ),
            Text('\$${product.price.toStringAsFixed(2)}'),
          ],
        ),
      ],
    );
  }
}
