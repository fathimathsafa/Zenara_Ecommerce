import 'package:ecommerce_zenara/core/constant/color_constant.dart';
import 'package:ecommerce_zenara/core/constant/global_textstyles.dart';
import 'package:ecommerce_zenara/presentation/bottom_navigation_screen/view/bottom_navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
        body: Center(
      child: Column(
        children: [
          SizedBox(
            height: size.height * .01,
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
          Text("EXPLORE THE BEST", style: GlobalTextStyles.Welcomedtitle),
          SizedBox(
            height: size.height * .001,
          ),
          Text("Transform Extraordinary to  ",
              style: GlobalTextStyles.Welcomedtitle2),
          Text("with our accessories.", style: GlobalTextStyles.Welcomedtitle2),
          SizedBox(height: size.height * 0.03),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: ColorTheme.maincolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20))),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                      builder: (context) => BottomNavigation_ex()),
                  (route) => false);
            },
            child: Text(
              "Let's Get Started ",
              style: TextStyle(color: ColorTheme.secondarycolor),
            ),
          ),
        ],
      ),
    ));
  }
}
