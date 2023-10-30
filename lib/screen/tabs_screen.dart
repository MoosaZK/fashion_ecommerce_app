import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:fashion_ecommerce_app/screen/searchscreen.dart';
import 'package:fashion_ecommerce_app/screen/wishlist_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});
  @override
  State<StatefulWidget> createState() {
    return _TabsScreenState();
  }
}

class _TabsScreenState extends State<TabsScreen> {
  var _selectedTab = _SelectedTab.home;
  Widget? activePage = tabScreenMap[_SelectedTab.home];

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = _SelectedTab.values[i];
      activePage = tabScreenMap[_selectedTab];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      // ),
      body: activePage,
      //Bottom Navigation
      bottomNavigationBar: DotNavigationBar(
        backgroundColor: Colors.grey[800],
        currentIndex: _SelectedTab.values.indexOf(_selectedTab),
        onTap: _handleIndexChanged,
        selectedItemColor: Colors.grey[100],
        unselectedItemColor: Colors.brown[300],

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

// ignore: library_private_types_in_public_api
Map<_SelectedTab, Widget> tabScreenMap = {
  _SelectedTab.home: const SearchScreen(),
  _SelectedTab.shopping: const SearchScreen(),
  _SelectedTab.favorite: const WishlistScreen(),
  _SelectedTab.chat: const SearchScreen(),
  _SelectedTab.person: const SearchScreen(),
};
