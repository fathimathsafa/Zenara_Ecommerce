import 'package:ecommerce_zenara/core/constant/global_textstyles.dart';
import 'package:ecommerce_zenara/presentation/home_screen/widget/category_slider.dart';
import 'package:ecommerce_zenara/presentation/home_screen/widget/page2.dart';
import 'package:ecommerce_zenara/presentation/home_screen/widget/page3.dart';
import 'package:ecommerce_zenara/presentation/home_screen/widget/page4.dart';
import 'package:ecommerce_zenara/presentation/home_screen/widget/page5.dart';
import 'package:ecommerce_zenara/presentation/home_screen/widget/page_view1.dart';
import 'package:ecommerce_zenara/presentation/home_screen/widget/product_advertise_card.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final controller = PageController();
    return SafeArea(
      child: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              leading: Icon(null),
              actions: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications,
                        color: Color(0xFF795548),
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        // Navigator.of(context).push(MaterialPageRoute(
                        //     builder: (context) => WhishlistScreen()));
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: Color(0xFF795548),
                        size: 30,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_bag,
                        color: Color(0xFF795548),
                        size: 30,
                      ),
                    ),
                  ],
                ),
              ],
              bottom: AppBar(
                automaticallyImplyLeading: false,
                title: Container(
                  height: 55,
                  width: double.infinity,
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Search for products",
                      hintStyle: TextStyle(color: Colors.grey),
                      prefixIcon: Icon(
                        Icons.search_sharp,
                        color: Color(0xFF795548),
                        size: 30,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SliverPadding(padding: EdgeInsets.only(top: 10)),
            SliverToBoxAdapter(child: CategorySlider()), // Removed Expanded
            SliverPadding(padding: EdgeInsets.all(5)),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  SizedBox(
                    height: 280,
                    child: PageView(
                      controller: controller,
                      children: [
                        page1(),
                        page2(),
                        page3(),
                        page4(),
                        page5(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: size.height * .002,
                  ),
                  SmoothPageIndicator(
                    controller: controller,
                    count: 5,
                    effect: SwapEffect(
                      activeDotColor: Color(0xFF795548),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 20,
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Text(
                    " Top Discounts For You",
                    style: GlobalTextStyles.advertise,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ProductCard(
                        text: 'Belts ',
                        text2: ' Min 50% offer',
                        image: 'assets/discounts/Belts.jpeg',
                      ),
                      ProductCard(
                        text: 'Rings ',
                        text2: ' Min 25% offer',
                        image: 'assets/discounts/Ring.jpeg',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ProductCard(
                        text: 'Belts ',
                        text2: ' Min 50% offer',
                        image: 'assets/discounts/foot.jpeg',
                      ),
                      ProductCard(
                        text: 'Sling Bags ',
                        text2: ' Min 25% offer',
                        image:
                            'assets/top_deals/Mini Bucket Bag Chain Decor PU Pleated.jpeg',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                children: [
                  Text(
                    " Top Selections",
                    style: GlobalTextStyles.advertise,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      ProductCard(
                        text: 'Rings',
                        text2: ' Min 50% offer',
                        image: 'assets/top_deals/7 (6).jpeg',
                      ),
                      ProductCard(
                        text: 'Earrings ',
                        text2: ' Min 25% offer',
                        image: 'assets/top_deals/Crystal Drop Earrings.jpeg',
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      ProductCard(
                        text: 'Watches ',
                        text2: ' Min 50% offer',
                        image: 'assets/top_deals/Nwtfossilwatch.jpeg',
                      ),
                      ProductCard(
                        text: 'Hair Accessories',
                        text2: ' Min 25% offer',
                        image:
                            'assets/top_deals/Isla Gold Pearl Wedding Hair Pins (Set of 5).jpeg',
                      ),
                    ],
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
