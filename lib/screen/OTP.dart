

import 'package:flutter/material.dart';
import 'package:whatsapp/screen/profile.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class otpscreen extends StatelessWidget {
  String phonenumber;
  otpscreen({required this.phonenumber});
  TextEditingController otp1controller=TextEditingController();
  TextEditingController otp2controller=TextEditingController();
  TextEditingController otp3controller=TextEditingController();
  TextEditingController otp4controller=TextEditingController();
  TextEditingController otp5controller=TextEditingController();
  TextEditingController otp6controller=TextEditingController();
  // const otpscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Uihelper.CustomText(text: 'Verify Your number', height: 20,color:Color(0XFF00A884),fontWeight: FontWeight.bold),
            SizedBox(height: 30,),
            Uihelper.CustomText(text: "You’ve tried to register +92${phonenumber}", height: 15,color:Color(0XFF5E5E5E),),
            Uihelper.CustomText(text: "recently. Wait before requesting an sms or a call.", height: 15, color:Color(0XFF5E5E5E),),
            Row(
              mainAxisAlignment:MainAxisAlignment.center,
              children: [
             Uihelper.CustomText(text: " with your code.", height: 15, color:Color(0XFF5E5E5E),),
             GestureDetector(
              onTap: (){
                Navigator.pop(context);
                
              },child: Uihelper.CustomText(text: "Wrong number?", height: 15, color:Color(0XFF00A884),),

             ),
             
              ],
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Uihelper.CustomContainer(otp1controller),
                SizedBox(width: 10,),
                Uihelper.CustomContainer(otp2controller),
                SizedBox(width: 10,),
                Uihelper.CustomContainer(otp3controller),
                SizedBox(width: 10,),
                Uihelper.CustomContainer(otp4controller),
                SizedBox(width: 10,),
                Uihelper.CustomContainer(otp5controller),
                SizedBox(width: 10,),
                Uihelper.CustomContainer(otp6controller),
              ]
            ),
            SizedBox(height: 35,),
            Uihelper.CustomText(text: "  Didn’t receive code?", height: 14,color: Color(0XFF00A884),),
          ],
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(callback:(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => profilescreen()));
      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
    
  }
}