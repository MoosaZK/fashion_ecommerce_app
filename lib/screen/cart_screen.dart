import 'package:fashion_ecommerce_app/provider/product_provider.dart';
import 'package:fashion_ecommerce_app/screen/searchscreen.dart';
import 'package:fashion_ecommerce_app/widgets/bottom_appbar_button.dart';
import 'package:fashion_ecommerce_app/widgets/cart_items_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CartScreen extends ConsumerStatefulWidget {
  const CartScreen({super.key});

  @override
  ConsumerState<CartScreen> createState() {
    return _CartScreenState();
  }
}

class _CartScreenState extends ConsumerState<CartScreen> {
  @override
  Widget build(BuildContext context) {
    final products = ref.watch(productProvider);
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          iconTheme: const IconThemeData(color: Colors.black),
          backgroundColor: Colors.transparent,
          title: const Text(
            "My Cart",
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (ctx, index) => Dismissible(
            onDismissed: (direction) {},
            key: ValueKey(products[index]),
            background: Container(
              color: Colors.red,
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 20),
              child: const Icon(
                Icons.delete,
                color: Colors.white,
                size: 40,
              ),
            ),
            child: CartItemTile(product: products[index]),
          ),
        ),
        bottomNavigationBar: BottomAppbarButton(
          title: 'Procced to check out',
          onPressedCallback: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return SearchScreen();
            }));
          },
        ));
  }
}
