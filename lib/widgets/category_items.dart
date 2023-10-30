import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  final IconData iconData;
  const CategoryItems({Key? key, required this.title, required this.iconData})
      : super(key: key);
  final String title; // Define the icon data to be passed

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Ink(
          decoration: BoxDecoration(
            color: Colors.brown[100],
            borderRadius: BorderRadius.circular(100),
          ),
          child: InkWell(
            onTap: () {
              // Handle the tap event here
            },
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Icon(
                iconData, // Use the passed icon data to create the Icon
                color: Colors.brown,
                size: 30,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(title),
      ],
    );
  }
}
