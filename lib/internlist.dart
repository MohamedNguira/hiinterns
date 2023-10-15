
import 'package:flutter/material.dart';
import 'package:hiinterns/filter.dart';



class InternList extends StatefulWidget {
  InternList({super.key});




  @override
  State<InternList> createState() => InternListState();
}

class InternListState extends State<InternList> {
  TextStyle inputstyle = TextStyle();
  OutlineInputBorder inputborder =  OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(5.0),);

  List<Widget> internships = [
    Internship(logo:"1", name: 'Stage en finance', place: "Express FM - Tunis", desc: "Description of the internship. The internship is Good and the whether is better.Good test,good good test", lastpub: "Publié il y a 2 jours", topics: ["Finance" , "Budgétisation","Analyse financière"]),
    SizedBox(height: 20,)
  ,Internship(logo:"1", name: 'Stage en finance', place: "Express FM - Tunis", desc: "Description of the internship. The internship is Good and the whether is better.Good test,good good test", lastpub: "Publié il y a 2 jours", topics: ["Finance" , "Budgétisation","Analyse financière"])
   , SizedBox(height: 20,) ,Internship(logo:"1", name: 'Stage en finance', place: "Express FM - Tunis", desc: "Description of the internship. The internship is Good and the whether is better.Good test,good good test", lastpub: "Publié il y a 2 jours", topics: ["Finance" , "Budgétisation","Analyse financière"])

  ];
  static double h=0,w=0;
  String search = "";
  @override
  Widget build(BuildContext context) {
    h = MediaQuery.of(context).size.height;
    w = MediaQuery.of(context).size.width;

    return Center(child:SizedBox(width: w * 0.95,child:Column(children: [
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
        Container(child: TextButton(child:Icon(Icons.filter_list_sharp,color: Colors.white,),onPressed: (){Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => FilterScreen()),
    );}),width: w * 0.15,height: w * 0.15,decoration: BoxDecoration(color: Color(0xff059669),borderRadius: BorderRadius.all(Radius.circular(5))
        ),)
      ],),
      SizedBox(height: h * 0.02,),
      SizedBox(height: h * 0.6,child: ListView(children: internships,),)

    ],)));
  }
}

class Internship extends StatelessWidget {
  Internship({super.key,required this.logo,required this.name,required this.place,required this.desc,required this.lastpub,required this.topics});
  String logo, name,place,desc,lastpub;
  List<String> topics;

  @override
  Widget build(BuildContext context) {
      double h = InternListState.h, w = InternListState.w;
      List<Widget> topicsw = [];
      for(String i in topics){
        topicsw.add(Container(height: h * 0.03,color: Color(0xfff6ffdb),child: Text(
          i,
          style: TextStyle(
            color: Color(0xFF1F2937),
            fontSize: 12,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w500,
          ),
        ),alignment: Alignment.center,));
        topicsw.add(SizedBox(width:w * 0.02));
      }
      return TextButton(onPressed: (){  }, child: Container(height: h * 0.25,width:  w * 0.95, decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(7)),
      child: Stack(
        children: [
          Positioned(left: w * 0.05,top: h * 0.02,child: Image.asset("images/" + logo + '.png')),
          Positioned(left: w * 0.25,top: h * 0.03,child: Text(
            name,
            style: TextStyle(
              color: Color(0xFF1F2937),
              fontSize: 16,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
          )),
          Positioned(left: w * 0.25,top: h * 0.06,child: Text(
            place,
            style: TextStyle(
              color: Color(0xFF6B7280),
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          )),
          Positioned(left: w * 0.05,top: h * 0.1,child: SizedBox(width: w * 0.85,child: Text(
           desc, style: TextStyle(
              color: Color(0xFF374151),
              fontSize: 14,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
            ),
          ),)),
          Positioned(left: w * 0.05,top: h * 0.18,child: SizedBox(width: w * 0.85,child: Text(
           lastpub,
            style: TextStyle(
              color: Color(0xFF6B7280),
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,

            ),
          ),)),
          Positioned(left: w * 0.05,top: h * 0.21,child: SizedBox(width: w * 0.85,height: h * 0.03,child: ListView(scrollDirection: Axis.horizontal,children: topicsw,
          ),))
        ],
      ),
      ));
  }
}
