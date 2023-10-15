
import 'package:flutter/material.dart';
import 'package:hiinterns/profile.dart';

class CompanyPage extends StatefulWidget {
  const CompanyPage({super.key});




  @override
  State<CompanyPage> createState() => CompanyPageState();
}

class CompanyPageState extends State<CompanyPage> {

  static int state = 0;
  static double h = 0;
  static double w = 0;
  static int index = 0;
  static List<String> numbers =['10','11','12','13','14'],days = ['Mon','Tue','Wed','Thu','Fri'];
  static List<Widget> profiles = [ProfileWidget(pic: 'wael', name: "Ahmed Trabelsi", pos: "ML Developer", time: "9:00 AM", f: (){}),ProfileWidget(pic: 'wael', name: "Ahmed Trabelsi", pos: "ML Developer", time: "9:00 AM", f: (){}),ProfileWidget(pic: 'wael', name: "Ahmed Trabelsi", pos: "ML Developer", time: "9:00 AM", f: (){}),ProfileWidget(pic: 'wael', name: "Ahmed Trabelsi", pos: "ML Developer", time: "9:00 AM", f: (){}),ProfileWidget(pic: 'wael', name: "Ahmed Trabelsi", pos: "ML Developer", time: "9:00 AM", f: (){})];
  @override
  Widget build(BuildContext context) {
      h = MediaQuery.of(context).size.height;
      w = MediaQuery.of(context).size.width;
      List<Widget> dates =[];
      for(int i = 0;i<numbers.length;i++){
        dates.add(DateWidget(number: numbers[i], day: days[i], selected: i == index,f: (){setState(() {
          index =i;
        });}));
        dates.add(SizedBox(width: w * 0.02,));
      }
      print(dates);
      return  Center(child:SizedBox(width: w * 0.95,child:Column(children: [
        SizedBox(height: h * 0.05,),
        Row(mainAxisAlignment: MainAxisAlignment.end,children: [
          Icon(Icons.notifications,size: w * 0.07,), SizedBox(width: w * 0.05,),Icon(Icons.person,size: w * 0.07,)
        ],),
        Align(child:Text(
          'Hello',
          style: TextStyle(
            color: Color(0xFF0B1533),
            fontSize: 16,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w400,
          ),
        ),alignment: Alignment.centerLeft,),
        SizedBox(height: h * 0.01,),
        Align(child:Text(
          'Spec Dev Agency',
          style: TextStyle(
            color: Color(0xFF0B1533),
            fontSize: 24,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w600,
          ),
        ),alignment: Alignment.centerLeft,),
        TextButton(onPressed: (){}, child: Image.asset('images/button.png')),
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [
          Text(
            'Upcoming interviews',
            style: TextStyle(
              color: Color(0xFF0B1533),
              fontSize: 16,
              fontFamily: 'Outfit',
              fontWeight: FontWeight.w600,
            ),
          ),
          TextButton(onPressed: (){}, child: Text('View all'))
        ],),
        SizedBox(height: h * 0.02),
       SizedBox(width: w * 0.94,height: h * 0.1,child: ListView(scrollDirection: Axis.horizontal,children: dates,)),
        SizedBox(height: h * 0.02,),
        SizedBox(height: h * 0.4,child:ListView(children: profiles,))
      ])));
  }
}


class DateWidget extends StatelessWidget {
  DateWidget({super.key,required this.number,required this.day,required this.selected,required this.f()});
  String number,day;
  bool selected = false;
  Function f;
  @override
  Widget build(BuildContext context) {
    double h = CompanyPageState.h, w = CompanyPageState.w;
    print("hi");
    return TextButton(onPressed: (){ f(); }, child: Container(height: h * 0.5,width:  w * 0.15, decoration: BoxDecoration(color: selected?Color(0xffd4ddfc):Colors.white,borderRadius: BorderRadius.circular(20)),
      child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,children: [
        Text(
          number,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF0B1533),
            fontSize: 22,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: h * 0.01),
        Text(
          day,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF0B1533),
            fontSize: 12,
            fontFamily: 'Outfit',
            fontWeight: FontWeight.w600,
          ),
        ),

      ],),)

    ));
  }
}

class ProfileWidget extends StatelessWidget {
  ProfileWidget({super.key,required this.pic,required this.name,required this.pos,required this.time,required this.f()});
  String pic,name,pos,time;
  Function f;
  @override
  Widget build(BuildContext context) {
    double h = CompanyPageState.h, w = CompanyPageState.w;
    print("hi");
    return TextButton(onPressed: (){ Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ProfilePage()),
    );}, child: Container(height: h * 0.1,width:  w * 0.94, decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(30)),
        child: Stack(children: [
          Positioned(child: Image.asset("images/" + pic + ".png",scale: 0.8,), left: w * 0.05, top: h * 0.025,),
          Positioned(child: Text(
            name,
            style: TextStyle(
              color: Color(0xFF0B1533),
              fontSize: 16,
              fontFamily: 'Outfit',
              fontWeight: FontWeight.w600,
            ),
          ), top: h * 0.03,left: w * 0.22,),
          Positioned(child: Text(
            pos,
            style: TextStyle(
              color: Color(0xFF0B1533),
              fontSize: 14,
              fontFamily: 'Outfit',
              fontWeight: FontWeight.w400,
            ),
          ), top: h * 0.06,left: w * 0.22,),
          Positioned(child: Text(
            time,
            style: TextStyle(
              color: Color(0xFF0B1533),
              fontSize: 16,
              fontFamily: 'Outfit',
              fontWeight: FontWeight.w600,
            ),
          ), top: h * 0.04,left: w * 0.7,),
        ],)

    ));
  }
}