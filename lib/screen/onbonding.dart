import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp/screen/loginScreen.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Onbonding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/onboarding.png"),
            SizedBox(
              height: 20,
            ),
            Uihelper.CustomText(
                text: 'Welcome to WhatsApp', height: 20, color: Colors.black),
                SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: "Read Out", height: 14,color: Color(0XFF5E5E5E)),
                SizedBox(width: 5,),
                Uihelper.CustomText(text: "Privacy Policy.", height: 14,color: Colors.blue),
                Uihelper.CustomText(text: 'Tap "Agree and continue"', height: 14,color: Color(0XFF5E5E5E)),
               
              ],
            ),
            SizedBox(height: 5,),
            Row( 
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Uihelper.CustomText(text: 'to accept the', height: 14,color: Color(0XFF5E5E5E)),
                Uihelper.CustomText(text: "  Teams of Service.", height: 14,color: Colors.blue),
            ],)
          ],
        ),
      ),
      floatingActionButton:
       Uihelper.CustomButton(
        callback:(){
        Navigator.push(context,MaterialPageRoute(builder: (context)=>loginscreen()),);
       }, buttonname: 'Agree and continue'),
    );
  }
}
