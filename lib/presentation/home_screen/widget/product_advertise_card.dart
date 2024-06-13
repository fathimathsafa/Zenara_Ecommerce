import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard(
      {super.key,
      required this.text,
      required this.text2,
      required this.image});
  final String text;
  final String text2;
  final String image;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height*15,
      child:  Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      image),
                                  fit: BoxFit.fitHeight,
                                ),
                                color: Colors.white,
                              ),
                            ),
    );
  }
}
