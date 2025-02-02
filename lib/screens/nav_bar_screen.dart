import 'package:ecommerce/screens/Cart/cart_screen.dart';
import 'package:ecommerce/screens/Fevorite/favorite.dart';
import 'package:ecommerce/screens/Home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/constants.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 2;
  List screens = const [
    Scaffold(),
    Favorite(),
    HomeScreen(),
    CartScreen(),
    Scaffold(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            currentIndex = 2;
          });
        },
        shape: CircleBorder(),
        backgroundColor: kprimaryColor,
        child: Icon(
          Icons.home,
          color: Colors.white,
          size: 35,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: Builder(
        builder: (context) {
          return BottomAppBar(
            elevation: 1,
            height: 60.0,
            color: Colors.white,
            shape: CircularNotchedRectangle(),
            notchMargin: 10,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 0;
                    });
                  },
                  icon: Icon(
                    Icons.grid_view_outlined,
                    size: 30,
                    color: currentIndex == 0
                        ? kprimaryColor
                        : Colors.grey.shade400,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 1;
                    });
                  },
                  icon: Icon(
                    Icons.favorite_border,
                    size: 30,
                    color: currentIndex == 1
                        ? kprimaryColor
                        : Colors.grey.shade400,
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 3;
                    });
                  },
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    size: 30,
                    color: currentIndex == 3
                        ? kprimaryColor
                        : Colors.grey.shade400,
                  ),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      currentIndex = 4;
                    });
                  },
                  icon: Icon(
                    Icons.person_2_outlined,
                    size: 30,
                    color: currentIndex == 4
                        ? kprimaryColor
                        : Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          );
        },
      ),
      body: screens[currentIndex],
    );
  }
}
