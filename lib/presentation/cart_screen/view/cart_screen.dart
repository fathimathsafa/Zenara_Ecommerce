import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CartScreen extends StatelessWidget {
  var image= ["https://i.pinimg.com/564x/6b/21/9f/6b219f9c18f4dce54c30817b6e59793b.jpg",
  "https://i.pinimg.com/736x/3f/04/93/3f049382f1e4df90a35111b9f9c0cd75.jpg",
    "https://i.pinimg.com/564x/ea/0b/9e/ea0b9ef284df8dcbba3abb6f3c6ccdf2.jpg",
    "https://i.pinimg.com/564x/80/01/0f/80010ffbdde0fd3748a635814fc7aa96.jpg",
    "https://i.pinimg.com/564x/d5/d8/49/d5d8494fd39a44dde1bfcfa7ea84ff35.jpg",
    "https://i.pinimg.com/564x/9f/95/29/9f95294ca340d0fd7771c9f959efc242.jpg",
    "https://i.pinimg.com/564x/21/1e/79/211e796207efef3333f3107301ac746a.jpg",
  ];
  var tittle =[
    "Bellies for Women",
    '4pcs Minimalism Solid Hair Claw',
    "Georgi Earing",
    "Square Bag",
    "Fire Bolt",
    "3 pack Belt",
    "Infinity Neckles",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar:
      AppBar(
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
        title: Text("My Cart",style:GoogleFonts.josefinSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
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
      body:
      ListView(
          children:
          List.generate(
            tittle.length,
                (index) => Card(
              color: Colors.white,
                  child: ListTile(
                leading: Image.network(height: 500,width: 150,image[index]),
                title: Text(tittle[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,color: Colors.black),),
                // subtitle: Column(
                //   crossAxisAlignment: CrossAxisAlignment.start,
                //   children: [
                //     Text(subtittile[index],style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10,color: Colors.black),),
                //     Text(subtittle1[index]),
                //   ],
                // ),

              ),
            ),

          ),
      ),
    );
  }
}
