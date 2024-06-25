import 'package:ecommerce_zenara/core/constant/color_constant.dart';
import 'package:ecommerce_zenara/core/constant/global_textstyles.dart';
import 'package:flutter/material.dart';


class ProductCategory extends StatelessWidget {
  final ImageProvider Productimage;
  final String Brand;
  final String name;
  final String price;
  final String rating;
  VoidCallback? onClick;
  ProductCategory({
    super.key,
    required this.Productimage,
    required this.Brand,
    required this.name,
    required this.price,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 170,
              width: 190,
              decoration: BoxDecoration(
                  image:
                      DecorationImage(image: Productimage, fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(Brand, style: GlobalTextStyles.brand),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text(name, style: GlobalTextStyles.productName),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  Icon(
                    Icons.currency_rupee,
                    size: 20,
                  ),
                  Text(price, style: GlobalTextStyles.advertise),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 120),
              child: Container(
                height: 25,
                width: 50,
                decoration: BoxDecoration(
                    color: ColorTheme.maincolor,
                    borderRadius: BorderRadius.circular(30)),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        rating,
                        style: GlobalTextStyles.rating,
                      ),
                    ),
                    Icon(
                      Icons.star,
                      size: 15,
                      color: ColorTheme.secondarycolor,
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 60),
              child: Text("Free Delivery", style: GlobalTextStyles.delivery),
            )
          ],
        ),
      ),
    );
  }
}
