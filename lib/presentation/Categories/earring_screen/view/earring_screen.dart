import 'package:ecommerce_zenara/core/common/widget/product_card.dart';
import 'package:ecommerce_zenara/core/constant/color_constant.dart';
import 'package:ecommerce_zenara/presentation/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';

class EarringScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.shopping_bag,
                  color: ColorTheme.maincolor,
                ))
          ],
          centerTitle: true,
          title: Center(
            child: Container(
              width: 300,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search Here...",
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: ColorTheme.maincolor),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0)),
                      borderSide: BorderSide(color: ColorTheme.maincolor),
                    ),
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                  ),
                ),
              ),
            ),
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: ColorTheme.maincolor,
            ),
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => BottomNavigation_ex()));
            },
          ),
        ),
        body: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: .54),
            itemCount: 6,
            itemBuilder: (context, index) => ProductCategory(
                  Productimage: AssetImage(
                      "assets/bags/67888293-5e82-4695-aa58-21131a4a3981.jpeg"),
                  Brand: 'SDFGVH',
                  name: 'abcdefg hijjgk',
                  price: '200',
                  rating: '3.4',
                )));
  }
}
