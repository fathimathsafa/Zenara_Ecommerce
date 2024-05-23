import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class WhishlistScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_back_outlined),),
        centerTitle: true,
        title: Text("My Whishlist",style:GoogleFonts.josefinSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.notifications,
                color: Color(0xFF795548),
                size: 30,
              )),
        ],
      ),

    );
  }
}
