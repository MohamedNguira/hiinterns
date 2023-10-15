
import 'package:flutter/material.dart';



class FilterScreen extends StatefulWidget {
  FilterScreen({super.key});




  @override
  State<FilterScreen> createState() => FilterState();
}

class FilterState extends State<FilterScreen> {
  TextStyle inputstyle = TextStyle();
  OutlineInputBorder inputborder =  OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(5.0),);

  static double h=0,w=0;
  String search = "";
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Scaffold(backgroundColor: Color(0xfff6ffdb),body:Center(child:SizedBox(width: w * 0.95,child:Column(children: [
      SizedBox(height: h * 0.1,),
      Text(
        'Internships',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF075727),
          fontSize: 48,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w800,
        ),
      ),
      SizedBox(height: h * 0.05,),
      Text(
        'Selection',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Color(0xFF0F0A3C),
          fontSize: 20,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(height: h * 0.05,),
      Row(children: [
        SizedBox(width: w * 0.8,child:TextField(onChanged: (String s){setState(() {
          this.search = s;
        });},decoration: InputDecoration(prefixIcon: Icon(Icons.search,color: Color(0xff059669)),labelText: "Trouver votre stage",filled:true,fillColor: Colors.white,border: inputborder),style: inputstyle,),
        ),
        Container(child: Icon(Icons.filter_list_sharp,color: Colors.white,),width: w * 0.15,height: w * 0.15,decoration: BoxDecoration(color: Color(0xff059669),borderRadius: BorderRadius.all(Radius.circular(5))
        ),)
      ],),

    ],))));
  }
}
