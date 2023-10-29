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
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 400,
              child:
                  // GridView.builder(gridDelegate:      const SliverGridDelegateWithFixedCrossAxisCount(
                  //           crossAxisCount: 2,
                  //           childAspectRatio: 1.5,
                  //           mainAxisSpacing: 10,
                  //           crossAxisSpacing: 10), itemBuilder: (ctx,index){

                  //           })
                  GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    mainAxisSpacing: 80,
                    crossAxisSpacing: 10),
                children: [
                  FlashProductCards(
                      product: products[0],
                      image: "assets/images/brownjacketgirl.jpg"),
                  FlashProductCards(
                      product: products[0],
                      image: "assets/images/brownjacketgirl.jpg"),
                  FlashProductCards(
                      product: products[0],
                      image: "assets/images/brownjacketgirl.jpg"),
                  FlashProductCards(
                      product: products[0],
                      image: "assets/images/brownjacketgirl.jpg"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
