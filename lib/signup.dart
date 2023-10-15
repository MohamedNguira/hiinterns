import 'package:flutter/material.dart';
import 'package:hiinterns/main.dart';


class SignUpPage extends StatefulWidget {
  SignUpPage({super.key,required this.f});
  Function f;



  @override
  State<SignUpPage> createState() => SignUpPageState();
}

class SignUpPageState extends State<SignUpPage> {

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
      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,children: [SizedBox(width: w * 0.43, child: TextField(decoration: InputDecoration(labelText: "Nom",filled:true,fillColor: Color(0x1f81b1f8),border: inputborder),style: inputstyle,)),SizedBox(width: w * 0.43, child: TextField(decoration: InputDecoration(labelText: "Prénom",filled:true,fillColor: Color(0x1f81b1f8),border: inputborder),style: inputstyle,))],),
      SizedBox(height: h * 0.02,),
      TextField( decoration:InputDecoration(labelText: "Entrer votre adresse mail",filled:true,fillColor: Color(0x1f81b1f8),border: inputborder),style: inputstyle,),
      SizedBox(height: h * 0.02,),
      TextField( decoration:InputDecoration(labelText: "Entrer votre mot de passe",filled:true,fillColor: Color(0x1f81b1f8),border: inputborder),style: inputstyle,),
      SizedBox(height: h * 0.02,),
      TextField( decoration:InputDecoration(labelText: "Confirmer le mot de passe",filled:true,fillColor: Color(0x1f81b1f8),border: inputborder),style: inputstyle,)
      ,
      Row(crossAxisAlignment: CrossAxisAlignment.center,children: [ Checkbox(value: accepted, onChanged: (bool? value){setState(() {
        this.accepted = value!;
      });}),conditions],),
      SizedBox(height: h * 0.04,),
      TextButton(onPressed: (){MyHomePageState.state = 2;widget.f();},style: TextButton.styleFrom(
          backgroundColor: Color(0xff0f0a3c),
          fixedSize: Size(w *0.7,h * 0.08),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
      ), child:Text("S'inscrire", style: TextStyle(
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
        'Vous avez déjà un compte ?',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w500,
        ),
      ), TextButton(onPressed: (){MyHomePageState.state = 1;widget.f();}, child: Text("Connexion"))],)
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