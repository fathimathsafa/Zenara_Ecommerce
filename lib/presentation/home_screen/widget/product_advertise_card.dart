import 'package:ecommerce_zenara/core/constant/global_textstyles.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.text,
    required this.text2,
    required this.image,
  });

  final String image;
  final String text;
  final String text2;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: SizedBox(
        height: size.height * 0.3,
        width: 180,
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text,
                    style: GlobalTextStyles.CardText,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    text2,
                    style: GlobalTextStyles.CardText,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
