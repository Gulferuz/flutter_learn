import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  final int selectedIndex;
  final Function(int index) onSelectedBottom;

  const MyBottomNavigationBar({
    super.key,
    required this.selectedIndex,
    required this.onSelectedBottom,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (int index) {
        onSelectedBottom(index);
      },
      currentIndex: selectedIndex,
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.grey,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
          activeIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.home, color: Colors.red),
          ),
        ),
        // BottomNavigationBarItem(icon: Icon(Icons.shopping_cart_outlined),label: 'Shop'),
        BottomNavigationBarItem(
          icon: Image.asset('assets/image/bag.png'),
          label: 'Bag',
          activeIcon: Image.asset('assets/image/bag_red.png'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outline_rounded),
          label: 'Favorites',
          activeIcon: IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite, color: Colors.red),
          ),
        ),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ],
    );
  }
}
