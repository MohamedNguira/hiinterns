import 'package:flutter/material.dart';
import 'package:hiinterns/company.dart';
import 'package:hiinterns/internlist.dart';
import 'package:hiinterns/login.dart';
import 'package:hiinterns/signup.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});




  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {

  static int state = 0;
  @override
  Widget build(BuildContext context) {
    Widget screen = SignUpPage(f: (){setState(() {

    });});
    if(state == 1)screen = LoginPage(f:(){setState(() {

    });});
    if(state == 2)return  Scaffold(backgroundColor:state >= 2? Color(0xfff6ffdb):Colors.white,body: InternList(),);
    if(state == 3) return Scaffold(backgroundColor: Color(0xfff5f7ff),body: CompanyPage());

    return Scaffold(backgroundColor:state >= 2? Color(0xfff6ffdb):Colors.white,body: screen,);
  }
}
