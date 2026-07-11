import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Text('Welcome to the Home Screen!'),
        ),
      ),
    bottomNavigationBar: BottomNavigationBar(
  currentIndex: currentIndex,

  onTap: (index) {
    setState(() {
      currentIndex = index;
    });
  },
  type: BottomNavigationBarType.fixed,
  backgroundColor: const Color(0xFFFF4B67),
  selectedItemColor: Colors.black,
  unselectedItemColor: Colors.white,
  selectedFontSize: 14,
  unselectedFontSize: 14,
    items:  [
     BottomNavigationBarItem(
        icon: Icon(Icons.home_outlined),
        label: 'Home',
      ),

     BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart_outlined),
        label: 'Cart',
        ),

      BottomNavigationBarItem(
        icon: Icon(Icons.favorite_border),
        label: 'Favourite',
       ),

       BottomNavigationBarItem(
         icon: Icon(Icons.person_outline),
         label: 'Account',
        ),
        ],
      ),
    );
  }
}