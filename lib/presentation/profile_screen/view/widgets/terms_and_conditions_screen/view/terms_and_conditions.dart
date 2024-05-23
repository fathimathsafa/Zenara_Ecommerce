import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  

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
        title: Text("Terms and Conditions",style:GoogleFonts.josefinSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
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
            Text("Welcome to ZENARA, the premier destination for accessories shopping. These terms and conditions govern your use of the ZENARA mobile application . By accessing or using the App, you agree to comply with these terms and conditions.",style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,),
            Text("Some features of the App may require you to create an account. You are responsible for maintaining the confidentiality of your account and password and for restricting access to your account. You agree to accept responsibility for all activities that occur under your account.",style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,),
            Text("We strive to provide accurate and up-to-date information about our products. However, we do not warrant the accuracy, completeness, or reliability of any product information on the App. Product images are for illustrative purposes only and may differ from the actual product.",style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,),
            Text("When you place an order through the App, you are offering to purchase products subject to these terms. All orders are subject to availability and confirmation of the order price. Payment must be made in full at the time of placing the order. ",style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,),
            Text("We aim to ship orders promptly and provide estimated delivery times. However, we cannot guarantee delivery dates and are not responsible for any delays in delivery.",style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,),
            Text("All content and materials available on the App, including but not limited to text, graphics, logos, images, and software, are the property of [Your Company Name] and are protected by intellectual property laws. You may not use, reproduce, distribute, or create derivative works based on this content without prior written permission from ZENARA.",style: TextStyle(fontSize: 15),),
            SizedBox(height: 10,),
            Text("If you have any questions about these terms and conditions, please contact us at zenara01@gmail.com.",style: TextStyle(fontSize: 15),),
          ],
        ),
      ),

    );
  }
}
