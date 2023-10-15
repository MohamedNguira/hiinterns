import 'package:flutter/material.dart';
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
    return Scaffold(body: screen,);
  }
}
