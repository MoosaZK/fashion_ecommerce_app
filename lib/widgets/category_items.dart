import 'package:flutter/material.dart';

class CategoryItems extends StatelessWidget {
  const CategoryItems({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Ink(
          decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(100)),
          child: InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Icon(
                  Icons.backpack,
                  color: Colors.grey[800],
                  size: 30,
                ),
              )),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text("Bag"),
      ],
    );
  }
}
