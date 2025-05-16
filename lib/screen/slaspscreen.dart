import 'dart:async';

import 'package:whatsapp/screen/onbonding.dart';
import 'package:whatsapp/widgets/uihelper.dart';
import 'package:flutter/material.dart';

class Slaspscreen extends StatefulWidget{
  @override
  State<Slaspscreen> createState()=> _SlaspscreenState();
}
 class _SlaspscreenState extends State<Slaspscreen> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration(seconds: 3),(){
    //   // Navigator.pushReplacementNamed(context, '/login');
    // });
    Timer(Duration(seconds: 3),(){
      Navigator.pushReplacement(context, 
      MaterialPageRoute(
        builder:(context) => Onbonding()),
        );

    });
    
  }
  @override
  Widget build(Object context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/whatsapp 1.png"),
            SizedBox(height: 10,),
            Uihelper.CustomText(text: 'WhatsApp', height: 18,fontWeight: FontWeight.bold),
            
          ],
        ),
      ),
    );
  }
  
}

