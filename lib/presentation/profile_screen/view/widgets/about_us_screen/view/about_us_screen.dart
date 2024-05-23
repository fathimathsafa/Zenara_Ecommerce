import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutusScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
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
        centerTitle: true,
        title: Text("About Us",style:GoogleFonts.josefinSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text("Welcome to ZENARA, your one-stop shop for trendy and affordable accessories. At ZENARA, we believe that accessories are more than just adornments; they're expressions of your unique style and personality. That's why we're dedicated to bringing you the latest and greatest in accessories, from jewelry and handbags to hats and scarves"

        "Our team scours the globe to find the most stylish and high-quality accessories, so you can always look and feel your best. Whether you're dressing up for a special occasion or adding the perfect finishing touch to your everyday look, we have something for every style and budget."

       " But we're more than just a store. We're a community of fashion lovers who are passionate about helping you find the perfect accessories to complement your style. Our goal is to inspire and empower you to express yourself through your accessories, because we believe that fashion is not just about what you wear, but how you wear it."

      ,style: TextStyle(fontSize: 18),),
            SizedBox(height: 10,),
            Text("Thank you for choosing ZENARA. We're excited to be a part of your accessory journey and can't wait to see how you style our pieces.",style: TextStyle(fontSize: 18),)
          ],
        ),
      ),
    );
  }
}
