import 'package:ecommerce_zenara/presentation/whishlist_screen/view/whishlist_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';





class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = PageController();
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            leading: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Container(
                  height: 5,
                  width: 5,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF795548),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Z",
                      style: GoogleFonts.dmSerifDisplay(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            actions: [
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications,
                        color: Color(0xFF795548),
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => WhishlistScreen()));
                      },
                      icon: Icon(
                        Icons.favorite,
                        color: Color(0xFF795548),
                        size: 30,
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_bag,
                        color: Color(0xFF795548),
                        size: 30,
                      )),
                ],
              ),
            ],
            bottom: AppBar(
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
                      )),
                ),
              ),
            ),
          ),
          SliverPadding(padding: EdgeInsets.only(top: 10)),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) => Bags_Cate()));
                    },
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/icons/bag.png"),
                      radius: 35,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) => Bags_Cate()));
                    },
                    child: CircleAvatar(
                        backgroundImage: AssetImage("assets/icons/belt.png"),
                        radius: 35),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) => Watch_Cat()));
                    },
                    child: CircleAvatar(
                        backgroundImage: AssetImage("assets/icons/watch.png"),
                        radius: 33),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) => Shoe_Cat()));
                    },
                    child: CircleAvatar(
                        backgroundImage: AssetImage("assets/icons/shoe.png"),
                        radius: 33),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Navigator.of(context).push(
                      //     MaterialPageRoute(builder: (context) => Ring_Cat()));
                    },
                    child: CircleAvatar(
                        backgroundImage: AssetImage("assets/icons/Ring.png"),
                        radius: 33),
                  ),
                  SizedBox(
                    width: 10,
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
                    width: 10,
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
                    width: 10,
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
                    width: 10,
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
          ),
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
                  height: 10,
                ),
                SmoothPageIndicator(
                  controller: controller,
                  count: 5,
                  effect: SwapEffect(
                      activeDotColor: Color(0xFF795548),
                      dotColor: Colors.grey,
                      dotWidth: 10,
                      dotHeight: 10),
                ),
              ],
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 180, top: 10),
                  child: Text(
                    "Discounts For You",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: () {
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(
                        //         builder: (context) => Bags_Cate()),
                        //     (route) => false);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Color(0xFF795548),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/Discounts/sling_bag.jpeg"),
                                  fit: BoxFit.fitHeight,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                "Sling Bags",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15),
                              )),
                          Positioned(
                              top: 167,
                              left: 10,
                              child: Text(
                                "Min. 50% off",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(builder: (context) => Shoe_Cat()),
                        //         (route) => false);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Color(0xFF795548),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/Discounts/foot.jpeg"),
                                  fit: BoxFit.fill,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                "Foot Wears",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15),
                              )),
                          Positioned(
                              top: 167,
                              left: 10,
                              child: Text(
                                "Min. 50% off",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17),
                              ))
                        ],
                      ),
                    ),


                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(builder: (context) => Ring_Cat()),
                        //         (route) => false);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Color(0xFF795548),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/Discounts/Ring.jpeg"),
                                  fit: BoxFit.fill,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                "Rings",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15),
                              )),
                          Positioned(
                              top: 167,
                              left: 10,
                              child: Text(
                                "Min. 50% off",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(builder: (context) => Belts_Cat()),
                        //         (route) => false);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Color(0xFF795548),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/Discounts/Belts.jpeg"),
                                  fit: BoxFit.fill,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                "Belts",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15),
                              )),
                          Positioned(
                              top: 167,
                              left: 10,
                              child: Text(
                                "Min. 50% off",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17),
                              ))
                        ],
                      ),
                    ),

//
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 180, top: 10),
                  child: Text(
                    "Top Deals For You",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(builder: (context) => Watch_Cat()),
                        //         (route) => false);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Color(0xFF795548),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/top deals/Nwtfossilwatch.jpeg"),
                                  fit: BoxFit.fill,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                "Nwt Fossil Watch",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15),
                              )),
                          Positioned(
                              top: 167,
                              left: 10,
                              child: Text(
                                "Min. 60% off",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(builder: (context) => Neck_Cat()),
                        //         (route) => false);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Color(0xFF795548),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/top deals/moonneckles.jpeg"),
                                  fit: BoxFit.fill,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                "Moon Neckles",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15),
                              )),
                          Positioned(
                              top: 167,
                              left: 10,
                              child: Text(
                                "Min. 40_50% off",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(builder: (context) => Hair_Cat()),
                        //         (route) => false);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Color(0xFF795548),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/top deals/scrunchies.jpeg"),
                                  fit: BoxFit.fill,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                "Scrunchies",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15),
                              )),
                          Positioned(
                              top: 167,
                              left: 10,
                              child: Text(
                                "Min. 50% off",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(builder: (context) => Ear_Cat()),
                        //         (route) => false);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Color(0xFF795548),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/top deals/Crystal Drop Earrings.jpeg"),
                                  fit: BoxFit.fill,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                "Crystal Drop Earrings",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15),
                              )),
                          Positioned(
                              top: 167,
                              left: 10,
                              child: Text(
                                "Min. 60% off",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 180, top: 10),
                  child: Text(
                    "Top Selections",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(builder: (context) => Brace_Cat()),
                        //         (route) => false);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Color(0xFF795548),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/top deals/bracelets.jpeg"),
                                  fit: BoxFit.fill,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                "Bracelets",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15),
                              )),
                          Positioned(
                              top: 167,
                              left: 10,
                              child: Text(
                                "Specials",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(builder: (context) => Shoe_Cat()),
                        //         (route) => false);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Color(0xFF795548),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/top deals/shoepink.jpeg"),
                                  fit: BoxFit.fill,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                "Foot Wears",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15),
                              )),
                          Positioned(
                              top: 167,
                              left: 10,
                              child: Text(
                                "Specials",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(builder: (context) => Bags_Cate()),
                        //         (route) => false);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Color(0xFF795548),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/top deals/Mini Bucket Bag Chain Decor PU Pleated.jpeg"),
                                  fit: BoxFit.fill,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                "Mini Bucket Bag",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15),
                              )),
                          Positioned(
                              top: 167,
                              left: 10,
                              child: Text(
                                "Big Savings",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17),
                              ))
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    InkWell(
                      onTap: (){
                        // Navigator.of(context).pushAndRemoveUntil(
                        //     MaterialPageRoute(builder: (context) => Ring_Cat()),
                        //         (route) => false);
                      },
                      child: Stack(
                        children: [
                          Container(
                            height: 190,
                            width: 190,
                            decoration: BoxDecoration(
                              color: Color(0xFF795548),
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          Positioned(
                            top: 10,
                            left: 10,
                            child: Container(
                              height: 140,
                              width: 170,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image:
                                      AssetImage("assets/Home/accessories.jpeg"),
                                  fit: BoxFit.fill,
                                ),
                                color: Colors.white,
                              ),
                            ),
                          ),
                          Positioned(
                              top: 150,
                              left: 10,
                              child: Text(
                                "Decor Rings",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 15),
                              )),
                          Positioned(
                              top: 167,
                              left: 10,
                              child: Text(
                                "Specials",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 17),
                              ))
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

class page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: [
          Container(
            height: 280,
            width: 440,
            color: Colors.white,
          ),
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
            child: Container(
                height: 190,
                width: 390,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Home/Bagsss.jpeg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ],
      ),
    );
  }
}

class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: [
          Container(
            height: 280,
            width: 440,
            color: Colors.white,
          ),
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
            child: Container(
                height: 190,
                width: 390,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Home/footwearr.jpeg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ],
      ),
    );
  }
}

class page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: [
          Container(
            height: 280,
            width: 440,
            color: Colors.white,
          ),
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
            child: Container(
                height: 190,
                width: 390,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Home/glasss.jpeg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ],
      ),
    );
  }
}

class page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: [
          Container(
            height: 280,
            width: 440,
            color: Colors.white,
          ),
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
            child: Container(
                height: 190,
                width: 390,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Home/accessories.jpeg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ],
      ),
    );
  }
}

class page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Stack(
        children: [
          Container(
            height: 280,
            width: 440,
            color: Colors.white,
          ),
          Positioned(
            top: 10,
            left: 10,
            right: 10,
            bottom: 10,
            child: Container(
                height: 190,
                width: 390,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/Home/watch.jpeg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ],
      ),
    );
  }
}
