import 'package:ecommerce_zenara/presentation/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.45,
            child: StaggeredGrid.count(
              crossAxisCount: 6,
              children: [
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 7,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            image: DecorationImage(
                              image: AssetImage("assets/Welcome/earings.jpeg"),
                              fit: BoxFit.fill,
                            )),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 4,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15, bottom: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(110),
                            image: DecorationImage(
                              image:
                                  AssetImage("assets/Welcome/girlchain.jpeg"),
                              fit: BoxFit.fill,
                            )),
                      ),
                    )),
                StaggeredGridTile.count(
                    crossAxisCellCount: 3,
                    mainAxisCellCount: 4,
                    child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(90),
                            image: DecorationImage(
                              image: AssetImage("assets/Welcome/bags.jpeg"),
                              fit: BoxFit.fill,
                            )),
                      ),
                    )),
              ],
            ),
          ),
          Text(
            "EXPLORE THE BEST",
            style: GoogleFonts.josefinSans(
                color: Color(0xFF795548),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Transform ordinary into extraordinary ",
            style:
                GoogleFonts.josefinSans(color: Color(0xFF795548), fontSize: 23),
          ),
          Text(
            "with our accessories.",
            style:
                GoogleFonts.josefinSans(color: Color(0xFF795548), fontSize: 23),
          ),
          SizedBox(
            height: 20,
          ),
          MaterialButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => BottomNavigation_ex()));
            },
            color: Color(0xFF795548),
            shape: StadiumBorder(),
            child: Text(
              "Let's Get Started",
              style: GoogleFonts.josefinSans(color: Colors.white, fontSize: 18),
            ),
          )
        ],
      ),
    ));
  }
}
