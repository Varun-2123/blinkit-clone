import 'package:blinkit_clone/Repository/screens/cart/cartscreen.dart';
import 'package:blinkit_clone/Repository/screens/categories/categoriesscreen.dart';
import 'package:blinkit_clone/Repository/screens/home/homescreen.dart';
import 'package:blinkit_clone/Repository/screens/printer/printerscreen.dart';
import 'package:blinkit_clone/Repository/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Bottomnavscreen extends StatefulWidget {
  const Bottomnavscreen({super.key});
  @override
  State<Bottomnavscreen> createState() => _BottomnavscreenState();
}

class _BottomnavscreenState extends State<Bottomnavscreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    Homescreen(),
    Cartscreen(),
    Categoriesscreen(),
    Printerscreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: currentIndex, children: screens),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Uihelper.customImg(img: "home.png"),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImg(img: "shopping-bag.png"),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImg(img: "category.png"),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: Uihelper.customImg(img: "printer.png"),
            label: "Printer",
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) => setState(() => currentIndex = index),
      ),
    );
  }
}
