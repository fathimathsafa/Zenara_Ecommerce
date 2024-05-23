import 'dart:async';

import 'package:ecommerce_zenara/core/constant/color_constant.dart';
import 'package:ecommerce_zenara/core/constant/global_textstyles.dart';
import 'package:ecommerce_zenara/presentation/welcome_screen/view/welcome_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Splash_newex1 extends StatefulWidget {
  @override
  State<Splash_newex1> createState() => _Splash_newex1State();
}

class _Splash_newex1State extends State<Splash_newex1> {
  @override
  void initState() {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => WelcomeScreen()));
    });
    super.initState();
  }

  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);

    return Scaffold(
      backgroundColor: ColorTheme.secondarycolor, //Color(0xFFDFCAA0),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: size.height * .25,
              width: size.width * .25,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: ColorTheme.maincolor,
              ),
              child: Center(
                child: Text('Z', // Replace 'A' with the desired letter
                    style: GlobalTextStyles.zhead),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Text("Zenara.", style: GlobalTextStyles.MainHead)
          ],
        ),
      ),
    );
  }
}
