import 'package:carousel_slider/carousel_slider.dart';
import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:fashion_ecommerce_app/provider/product_provider.dart';
import 'package:fashion_ecommerce_app/widgets/flash_product_cards.dart';
import 'package:flutter/material.dart';
import 'package:fashion_ecommerce_app/widgets/category_items.dart';
import 'package:fashion_ecommerce_app/widgets/flash_items.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SearchScreen extends ConsumerStatefulWidget {
  const SearchScreen({super.key});
  @override
  ConsumerState<SearchScreen> createState() {
    return _SearchScreen();
  }
}

class _SearchScreen extends ConsumerState<SearchScreen> {
  String _location = "New York";

  var _selectedTab = _SelectedTab.home;
  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
    });
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _products = ref.watch(productProvider);
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                //Appbar
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Location",
                          style: TextStyle(color: Colors.grey),
                        ),
                        Row(
                          children: [
                            const Icon(Icons.location_pin),
                            const SizedBox(
                              width: 10,
                            ),
                            DropdownButtonHideUnderline(
                              child: DropdownButton<String>(
                                  value: _location,
                                  items: const [
                                    DropdownMenuItem(
                                        value: "New York",
                                        child: Text("New York, USA")),
                                    DropdownMenuItem(
                                        value: "Karachi",
                                        child: Text("Karachi, PK")),
                                  ],
                                  onChanged: (String? value) {
                                    setState(
                                      () {
                                        _location = value!;
                                      },
                                    );
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                    //
                    // ElevatedButton(
                    //   style: ElevatedButton.styleFrom(side: ),
                    //   onPressed: () {},
                    //   child: const Icon(Icons.notifications),
                    // ),
                    //Notification Button
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.grey[400],
                          borderRadius: BorderRadius.circular(100)),
                      child: const Icon(Icons.notifications),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),

                Row(
                  children: [
                    //Search bar
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          prefixIcon: Icon(Icons.search),
                          border: OutlineInputBorder(),
                          hintText: 'Search Tech Talk',
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    //edit button
                    Ink(
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(12)),
                      child: InkWell(
                          onTap: () {},
                          child: const Padding(
                            padding: EdgeInsets.all(16),
                            child: Icon(
                              Icons.edit,
                              color: Colors.white,
                            ),
                          )),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CarouselSlider(items: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(12)),
                    // width: MediaQuery.of(context).size.width,
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12)),
                    // width: MediaQuery.of(context).size.width,
                  ),
                ], options: CarouselOptions()),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Category",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(fontSize: 15, color: Colors.grey[600]),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CategoryItems(),
                    CategoryItems(),
                    CategoryItems(),
                    CategoryItems(),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    Text(
                      "Flash Sale",
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 45,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const <Widget>[
                      FlashItems(title: "All"),

                      FlashItems(title: "Popular"),
                      FlashItems(title: "Popular"),
                      FlashItems(title: "Popular"),
                      FlashItems(title: "Popular"),
                      FlashItems(title: "Popular"),
                      // FlashItems(title: "Newest"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 500,
                  child:
                      // GridView.builder(gridDelegate:      const SliverGridDelegateWithFixedCrossAxisCount(
                      //           crossAxisCount: 2,
                      //           childAspectRatio: 1.5,
                      //           mainAxisSpacing: 10,
                      //           crossAxisSpacing: 10), itemBuilder: (ctx,index){

                      //           })
                      GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 1.5,
                            mainAxisSpacing: 10,
                            crossAxisSpacing: 10),
                    children: const [
                      FlashProductCards(
                          image: "assets/images/brownjacketgirl.jpg"),
                      FlashProductCards(
                          image: "assets/images/brownjacketgirl.jpg"),
                      FlashProductCards(
                          image: "assets/images/brownjacketgirl.jpg"),
                      FlashProductCards(
                          image: "assets/images/brownjacketgirl.jpg"),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),

      //Bottom Navigation
      bottomNavigationBar: DotNavigationBar(
        backgroundColor: Colors.grey[300],
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        selectedItemColor: Colors.black,

        // dotIndicatorColor: Colors.black,
        items: [
          /// Home
          DotNavigationBarItem(
            icon: const Icon(Icons.home),
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.shopping_bag),
          ),

          /// Likes
          DotNavigationBarItem(
            icon: const Icon(Icons.favorite),
          ),

          /// Search
          DotNavigationBarItem(
            icon: const Icon(Icons.chat),
          ),

          /// Profile
          DotNavigationBarItem(
            icon: const Icon(Icons.person),
          ),
        ],
      ),
    );
  }
}

enum _SelectedTab { home, shopping, favorite, chat, person }
