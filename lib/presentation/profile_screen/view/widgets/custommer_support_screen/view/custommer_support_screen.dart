import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustommerSupportScreen extends StatelessWidget {
 
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
        title: Text("Custommer Support",style:GoogleFonts.josefinSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
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
            Text("Need help? Our customer support team is here to assist you. Whether you have questions about products, orders, or anything else, we're ready to help you find the answers you need.",style: TextStyle(fontSize: 19),),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(right: 300),
              child: Text("Contact Us",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 180),
              child: Text("Email: Zenara@gmail.com",style: TextStyle(fontSize: 18),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 240),
              child: Text("Phone:9867546719",style: TextStyle(fontSize: 18),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: EdgeInsets.only(right: 270),
              child: Text("Support Hours",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),

            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Text("Monday to Friday: 9:00 AM - 6:00 PM (EST)",style: TextStyle(fontSize: 18),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 110),
              child: Text("Saturday: 10:00 AM - 4:00 PM (EST)",style: TextStyle(fontSize: 18),),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.only(right: 280),
              child: Text("Sunday: Closed",style: TextStyle(fontSize: 18),),
            ),
            
          ],
        ),
      ),
    );
  }
}
