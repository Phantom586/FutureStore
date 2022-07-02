import 'package:flutter/material.dart';
import 'package:future_store/cart/cart.dart';
import 'package:future_store/products/view/products.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> _screensList = const [Products(), Cart()];
  int _currerntIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currerntIndex,
        onTap: (index) => setState(() {
          _currerntIndex = index;
        }),
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              _currerntIndex == 0
                  ? Icons.shopping_bag
                  : Icons.shopping_bag_outlined,
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              _currerntIndex == 1
                  ? Icons.shopping_cart
                  : Icons.shopping_cart_outlined,
            ),
            label: 'Cart',
          )
        ],
      ),
      body: _screensList[_currerntIndex],
    );
  }
}
