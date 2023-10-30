import 'package:fashion_ecommerce_app/provider/product_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../widgets/flash_items.dart';
import '../widgets/flash_product_cards.dart';

class WishlistScreen extends ConsumerStatefulWidget {
  const WishlistScreen({super.key});

  @override
  ConsumerState<WishlistScreen> createState() {
    return _WishlistScreenState();
  }
}

class _WishlistScreenState extends ConsumerState<WishlistScreen> {
  @override
  Widget build(BuildContext context) {
    final products = ref.watch(productProvider);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "My Wishlist",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Column(
          children: [
            SizedBox(
              height: 45,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const <Widget>[
                  FlashItems(title: "All"),
                  FlashItems(title: "Jacket"),
                  FlashItems(title: "Shirt"),
                  FlashItems(title: "Pant"),
                  FlashItems(title: "T-Shirt"),
                  // FlashItems(title: "Newest"),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 600,
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.8,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 10,
                ),
                itemCount: products.length, // The number of items in your data
                itemBuilder: (context, index) {
                  return FlashProductCards(
                    product:
                        products[index], // Assuming you have a list of products
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
