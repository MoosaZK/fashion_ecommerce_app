import 'package:flutter/material.dart';

class FlashProductCards extends StatelessWidget {
  const FlashProductCards({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: AlignmentDirectional.topEnd,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Container(
                // Set the width and height to make a square container
                // height: 150, // Adjust the size as needed
                child: Image.asset(
                  image,
                  fit:
                      BoxFit.cover, // Choose the appropriate fit for your image
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.grey[300]),
              padding: const EdgeInsets.all(8),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.favorite,
                    color: Colors.brown,
                  )),
            )
          ],
        )
      ],
    );
  }
}
