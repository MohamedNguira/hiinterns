import 'package:flutter/material.dart';
import 'package:hiinterns/main.dart';


class LoginPage extends StatefulWidget {
  LoginPage({super.key,required this.f});
  Function f;



  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  TextStyle inputstyle = TextStyle();
  bool accepted = false;
  OutlineInputBorder inputborder =  OutlineInputBorder(borderSide: BorderSide.none, borderRadius: BorderRadius.circular(10.0),);
  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height,w = MediaQuery.of(context).size.width;

    return Center(child:SizedBox(width: w * 0.9,child:SingleChildScrollView(child: Column( crossAxisAlignment: CrossAxisAlignment.center,children: [
      SizedBox(height: h * 0.02,),
      Image.asset("images/logotext.png",width: w * 0.5,height: h * 0.04,),
      SizedBox(height: h * 0.02,),
      Text(
        'Connectez-vous avec votre adresse mail',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 17,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(height: h * 0.04,),
      Align(alignment: Alignment.centerLeft,child: Text(
        'Email',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,

        ),
      )),
      SizedBox(height: h * 0.01,),
      TextField( decoration:InputDecoration(labelText: "Entrer votre adresse mail",filled:true,fillColor: Color(0x1f81b1f8),border: inputborder),style: inputstyle,),
      SizedBox(height: h * 0.02,),
      Align(alignment: Alignment.centerLeft,child: Text(
        'Password',
        style: TextStyle(
          color: Colors.black,
          fontSize: 18,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,

        ),
      )),
      SizedBox(height: h * 0.01,),
      TextField( obscureText: true,decoration:InputDecoration(labelText: "Entrer votre mot de passe",filled:true,fillColor: Color(0x1f81b1f8),border: inputborder),style: inputstyle,),

      SizedBox(height: h * 0.04,),
      TextButton(onPressed: (){MyHomePageState.state = 3;widget.f();},style: TextButton.styleFrom(
          backgroundColor: Color(0xff0f0a3c),
          fixedSize: Size(w *0.7,h * 0.08),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
      ), child:Text("Se connecter", style: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontFamily: 'Poppins',
        fontWeight: FontWeight.w600,
      ),)),

      SizedBox(height: h * 0.02,),
      Text(
        'Ou connectez avec ',
        style: TextStyle(
          color: Color(0xFF807A7A),
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
      ),
      SizedBox(height: h * 0.02,),
      Row(mainAxisAlignment: MainAxisAlignment.center,children: [Image.asset("images/google.png", height: h * 0.05,),SizedBox(width: w * 0.25,),Image.asset("images/linkedin.png",height: h * 0.05),],)
      , SizedBox(height: h * 0.02,),
      Row(mainAxisAlignment:MainAxisAlignment.center,children: [Text(
        "Vous n'avez pas de compte?",
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ), TextButton(onPressed: (){MyHomePageState.state = 0;widget.f();}, child: Text("S'inscrire"))],)
    ],),)));
  }

  Widget conditions = SizedBox(
    width: 300,
    height: 26,
    child: Text.rich(

      TextSpan(
        children: [
          TextSpan(
            text: 'J’accepte les',
            style: TextStyle(
              color: Colors.black,
              fontSize: 9,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: ' Conditions du service',
            style: TextStyle(
              color: Color(0xFF2071EC),
              fontSize: 9,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: ', les ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 9,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'Conditions générales',
            style: TextStyle(
              color: Color(0xFF2071EC),
              fontSize: 9,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: ' et les ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 9,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: 'Politique de confidentialité',
            style: TextStyle(
              color: Color(0xFF2071EC),
              fontSize: 9,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
          TextSpan(
            text: ' . ',
            style: TextStyle(
              color: Colors.black,
              fontSize: 9,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    ),
  );
}