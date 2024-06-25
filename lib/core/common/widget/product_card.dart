import 'package:ecommerce_zenara/core/constant/color_constant.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
            SizedBox(
              height: 7,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                Brand,
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.bold,
                    color: ColorTheme.black,
                    fontSize: 18),
              ),
            ),
            Text(name),
            Row(
              children: [
                Icon(Icons.currency_rupee),
                Text(price),
              ],
            ),
            MaterialButton(
              onPressed: () {},
              height: 35,
              minWidth: 50,
              child: Row(
                children: [
                  Text(rating),
                  Icon(Icons.star),
                ],
              ),
            ),
            Text("Free Delivery")
          ],
        ),
      ),
    );
  }
}
