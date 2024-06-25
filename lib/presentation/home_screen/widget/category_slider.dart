import 'package:ecommerce_zenara/presentation/categories/bag_screen/view/bag_screen.dart';
import 'package:ecommerce_zenara/presentation/categories/belt_screen/view/belt_screen.dart';
import 'package:ecommerce_zenara/presentation/categories/ring_screen/view/ring_screen.dart';
import 'package:ecommerce_zenara/presentation/categories/shoe_screen/view/shoe_screen.dart';
import 'package:ecommerce_zenara/presentation/categories/watch_screen/view/watch_screen.dart';
import 'package:flutter/material.dart';

class CategorySlider extends StatelessWidget {
  const CategorySlider({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SizedBox(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(
              width: size.width * .01,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => BagScreen()));
              },
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/icons/bag.png"),
                radius: 35,
              ),
            ),
            SizedBox(
              width: size.width * .01,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => BeltScreen()));
              },
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/belt.png"),
                  radius: 35),
            ),
            SizedBox(
              width: size.width * .01,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WatchScreen()));
              },
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/watch.png"),
                  radius: 33),
            ),
            SizedBox(
              width: size.width * .01,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => ShoeScreen()));
              },
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/shoe.png"),
                  radius: 33),
            ),
            SizedBox(
              width: size.width * .01,
            ),
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => RingScreen()));
              },
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/Ring.png"),
                  radius: 33),
            ),
            SizedBox(
              width: size.width * .01,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => Neck_Cat()));
              },
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/neck.png"),
                  radius: 33),
            ),
            SizedBox(
              width: size.width * .01,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => Hair_Cat()));
              },
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/hair.png"),
                  radius: 33),
            ),
            SizedBox(
              width: size.width * .01,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => Ear_Cat()));
              },
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/ear.png"),
                  radius: 33),
            ),
            SizedBox(
              width: size.width * .01,
            ),
            GestureDetector(
              onTap: () {
                // Navigator.of(context).push(
                //     MaterialPageRoute(builder: (context) => Brace_Cat()));
              },
              child: CircleAvatar(
                  backgroundImage: AssetImage("assets/icons/brace.png"),
                  radius: 33),
            ),
          ],
        ),
      ),
    );
  }
}
