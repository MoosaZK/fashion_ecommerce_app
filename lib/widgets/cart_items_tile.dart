import 'package:fashion_ecommerce_app/model/product_model.dart';
import 'package:flutter/material.dart';

class CartItemTile extends StatefulWidget {
  const CartItemTile({super.key, required this.product});
  final Product product;
  @override
  State<CartItemTile> createState() {
    return _CartItemTileState();
  }
}

class _CartItemTileState extends State<CartItemTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      decoration: BoxDecoration(
          border: Border.all(color: const Color.fromARGB(255, 211, 210, 210))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius:
                    BorderRadius.circular(10), // Adjust the radius as needed
                child: Image.asset(
                  widget.product.image,
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.product.name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text('\$${widget.product.price.toStringAsFixed(2)}')
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(5)),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.horizontal_rule_rounded,
                      size: 15,
                    )),
              ),
              SizedBox(
                width: 10,
              ),
              const Text("1"),
              SizedBox(
                width: 10,
              ),
              Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                    color: Colors.brown,
                    borderRadius: BorderRadius.circular(5)),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 15,
                    )),
              ),
            ],
          )
        ],
      ),
    );
    // return Card(
    //   child: Padding(
    //     padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
    //     child: Row(
    //       children: [],
    //     ),
    //   ),
    // );
  }
}
