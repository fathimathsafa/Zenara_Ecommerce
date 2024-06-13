import 'package:flutter/material.dart';

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
                      image: AssetImage("assets/home/Bagsss.jpeg"),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10),
                )),
          ),
        ],
      ),
    );
  }
}
