
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});




  @override
  State<ProfilePage> createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {


  static double h = 0;
  static double w = 0;

 @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return  Scaffold(backgroundColor:Color(0xfff5f7ff) ,body:Center(child:SizedBox(width: w * 0.95,child:SingleChildScrollView(child:Column(crossAxisAlignment:CrossAxisAlignment.start,children: [
      SizedBox(height: h * 0.1,),
      Text(
        'My Profile',
        style: TextStyle(
          color: Color(0xFF0B1533),
          fontSize: 24,
          fontFamily: 'Outfit',
          fontWeight: FontWeight.w600,
        ),
      ),
      SizedBox(height: h * 0.02,),
      SizedBox(width: w * 0.95, height: h * 0.1, child: Stack(children: [
        Positioned(child: Image.asset("images/" + 'wael'+ ".png",scale: 0.6,), left: w * 0.05, top: h * 0.025,),
        Positioned(child: Text(
          "Ahmed Trabelsi",
          style: TextStyle(
            color: Color(0xFF0B1533),
            fontSize: 16,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w600,
          ),
        ), top: h * 0.04,left: w * 0.25,),
        Positioned(child: Text(
          "ML Developer",
          style: TextStyle(
            color: Color(0xFF0B1533),
            fontSize: 14,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w400,
          ),
        ), top: h * 0.07,left: w * 0.25,),
      ],),),
      SizedBox(height: h * 0.02,),
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [Text("General Information",style: TextStyle(
        color: Color(0xFF0B1533),
        fontSize: 16,
        fontFamily: 'Outfit',
        fontWeight: FontWeight.w600,
      ),),TextButton(onPressed: (){}, child: Text("View all"))],),

      SizedBox(height: h * 0.03,),
      Text("Name:           Ahmed Trabelsi",style: TextStyle(
        color: Color(0xFF0B1533),
        fontSize: 16,
        fontFamily: 'Outfit',
        fontWeight: FontWeight.w600,

      ),),
      SizedBox(height: h * 0.03,),
      Text("Age:           21",style: TextStyle(
        color: Color(0xFF0B1533),
        fontSize: 16,
        fontFamily: 'Outfit',
        fontWeight: FontWeight.w600,

      ),),
      SizedBox(height: h * 0.03,),
      Image.asset("images/ProfileScreen.png",)
    ])))));
  }
}

