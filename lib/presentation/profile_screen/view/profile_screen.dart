
import 'package:ecommerce_zenara/presentation/home_screen/view/home_screen.dart';
import 'package:ecommerce_zenara/presentation/profile_screen/view/widgets/about_us_screen/view/about_us_screen.dart';
import 'package:ecommerce_zenara/presentation/profile_screen/view/widgets/custommer_support_screen/view/custommer_support_screen.dart';
import 'package:ecommerce_zenara/presentation/profile_screen/view/widgets/privacy_screen/view/privacy_screen.dart';
import 'package:ecommerce_zenara/presentation/profile_screen/view/widgets/rate_us_screen/view/rate_us_screen.dart';
import 'package:ecommerce_zenara/presentation/profile_screen/view/widgets/terms_and_conditions_screen/view/terms_and_conditions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:pin_code_fields/pin_code_fields.dart';





class ProfileScreen extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
appBar: AppBar(
  leading:IconButton(onPressed: (){
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>HomeScreen()));
  },icon: Icon(Icons.arrow_back_outlined,size: 30,color: Color(0xFF795548),),),
  centerTitle: true,
  title: Text("My Account",style:GoogleFonts.josefinSans(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25),),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: ListTile(
                title:Text("Hy There!",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),) ,
                trailing: MaterialButton(onPressed: (){
                showModalBottomSheet(context: context, builder: (BuildContext context){
                  return Container(
                    padding: EdgeInsets.all(16),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text("Enter Your Phone Number",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Color(0xFF795548),),),
                        SizedBox(height: 20,),
                        InternationalPhoneNumberInput(onInputChanged: (PhoneNumber number){
                          print(number.phoneNumber);
                        },
                          inputDecoration: InputDecoration(
                            labelText: "phone",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        MaterialButton(onPressed: (){
                          Navigator.pop(context);
                          showModalBottomSheet(context: context, builder:(BuildContext context){
                            return Container(
                              padding: EdgeInsets.all(16),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text("Enter OTP",style: TextStyle(color: Color(0xFF795548),fontWeight: FontWeight.bold),),
                                 SizedBox(height: 15,),
                                  PinCodeTextField(
                                    appContext: context,
                                    length: 6,
                                    onChanged: (value){
                                      },
                                    onCompleted: (value){

                                    },
                                    pinTheme: PinTheme(

                                      shape: PinCodeFieldShape.box,
                                      borderRadius: BorderRadius.circular(5),
                                      fieldHeight: 50,
                                      fieldWidth: 40,
                                      activeFillColor: Colors.white,
                                    ),
                                  ),
                                  MaterialButton(onPressed: (){},
                                    shape: StadiumBorder(),
                                    color: Color(0xFF795548),
                                    child: Text("Submit",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)
                                ],
                              ),
                            );

                          },);
                        },
                            color: Color(0xFF795548),
                            shape: StadiumBorder(),
                            child: Text("Countinue",style: TextStyle(color: Colors.white),)),
                        SizedBox(height: 10,),
                        Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("By continuing, you agree to Zrnara's"),
                          Text("Terms & ",style: TextStyle(color: Color(0xFF795548),),),

                        ],
                      ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Conditions ",style: TextStyle(color: Color(0xFF795548),fontWeight: FontWeight.bold)),
                                Text("and"),
                                Text(" Privacy Policy",style: TextStyle(color: Color(0xFF795548),)),
                              ],
                            ),
                          ],
                        )

                      ],
                    ),
                  );
                });
                },
                color:  Color(0xFF795548),
                child:  Text("login/Signup",style: TextStyle(color: Colors.white),),
                shape: StadiumBorder(),),
        
                subtitle:  Text("Login/Signup to managenyour Orders and a lot more",style: TextStyle(color: Colors.black),),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
        
                ),
        
              ),
            ),
            SizedBox(height: 10,),
            Container(
                color: Colors.white,
                child: ListTile(
        leading: CircleAvatar(backgroundImage: AssetImage("assets/profile page/order.png"),),
                  title:Text("My orders",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),) ,
                  subtitle: Text("Track, cancel and return ordres",style: TextStyle(color: Colors.black),),
                  trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF795548),),),
                ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/profile page/whishlist.png"),),
                title:Text("My Whishlist",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),) ,
                subtitle: Text("Your Favourite Products",style: TextStyle(color: Colors.black),),
                trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF795548),),),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/profile page/address.png"),),
                title:Text("My Addresses",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),) ,
                subtitle: Text("Save addresses for faster check out",style: TextStyle(color: Colors.black),),
                trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF795548),),),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/profile page/custommer service.png"),),
                title:Text("Customer Support",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),) ,
                subtitle: Text("Help regarding your purchases",style: TextStyle(color: Colors.black),),
                trailing: IconButton(onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>CustommerSupportScreen())); }, icon: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF795548),),),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/profile page/bank.png"),),
                title:Text("Add bank details",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),) ,
                subtitle: Text("Bank details for COD refunds",style: TextStyle(color: Colors.black),),
                trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF795548),),),
              ),
            ),
       SizedBox(height: 10,),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/profile page/rate.png"),),
                title:Text("Rate Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),) ,
                subtitle: Text("Rate your experience",style: TextStyle(color: Colors.black),),
                trailing: IconButton(onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>RateUsScreen())); }, icon: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF795548),),),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/profile page/about.png"),),
                subtitle: Text("Explore our purpose",style: TextStyle(color: Colors.black),),
                title:Text("About Us",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),) ,
                trailing: IconButton(onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>AboutusScreen())); }, icon: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF795548),),),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/profile page/terms.png"),),
                title:Text("Terms & Conditions",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),) ,
                subtitle: Text("Understand our terms",style: TextStyle(color: Colors.black),),
                trailing: IconButton(onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=>TermsAndConditionsScreen()));
                }, icon: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF795548),),),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/profile page/privacy.png"),),
                title:Text("Privacy Policy",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),) ,
                subtitle: Text("Our privacy commitment",style: TextStyle(color: Colors.black),),
                trailing: IconButton(onPressed: () { Navigator.of(context).push(MaterialPageRoute(builder: (context)=>PrivacyPolicyScreen())); }, icon: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF795548),),),
              ),
            ),
            Container(
              color: Colors.white,
              child: ListTile(
                leading: CircleAvatar(backgroundImage: AssetImage("assets/profile page/feedback.png"),),
                title:Text("Feedback",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),) ,
                subtitle: Text("Feedback Help us",style: TextStyle(color: Colors.black),),
                trailing: IconButton(onPressed: () {  }, icon: Icon(Icons.arrow_forward_ios_sharp,color: Color(0xFF795548),),),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
