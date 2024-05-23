import 'package:ecommerce_zenara/presentation/cart_screen/view/cart_screen.dart';
import 'package:ecommerce_zenara/presentation/home_screen/view/home_screen.dart';
import 'package:ecommerce_zenara/presentation/profile_screen/view/profile_screen.dart';
import 'package:ecommerce_zenara/presentation/whishlist_screen/view/whishlist_screen.dart';
import 'package:flutter/material.dart';





class BottomNavigation_ex extends StatefulWidget {
  @override
  State<BottomNavigation_ex> createState() => _BottomNavigation_exState();
}

class _BottomNavigation_exState extends State<BottomNavigation_ex> {
  var index = 0;
  var screens = [
    HomeScreen(),
    WhishlistScreen(),
    CartScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (tapIndex) {
          setState(() {
            index = tapIndex;
          });
        },
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Colors.black,
        backgroundColor: Colors.red,
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_sharp,
                color: Color(0xFF795548),
                size: 40,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: Color(0xFF795548),
                size: 35,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.shopping_bag,
                color: Color(0xFF795548),
                size: 35,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_rounded,
                color: Color(0xFF795548),
                size: 35,
              ),
              label: "")
        ],
      ),
      body: screens[index],
    );
  }
}
