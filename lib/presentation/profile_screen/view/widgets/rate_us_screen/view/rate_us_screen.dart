import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RateUsScreen extends StatelessWidget {


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
        title: Text("Rate Us",style:GoogleFonts.josefinSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
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
            SizedBox(height: 10,),
            Text("We value your feedback! If you enjoy using ZENARA, please take a moment to rate us on the App Store or Google Play Store. Your ratings and reviews help us improve our app and provide better service to you.",style: TextStyle(fontSize: 17),),
            SizedBox(height: 10,),
            Text("If you have any questions, suggestions, or concerns, please contact us at [Contact Email]. We're always here to help!",style: TextStyle(fontSize: 17),),
            SizedBox(height: 10,),
            Text("Thank you for choosing ZENARA!",style: TextStyle(fontSize: 17),)
          ],
        ),
      ),
    );
  }
}
