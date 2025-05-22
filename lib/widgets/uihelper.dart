import 'package:flutter/material.dart';

class Uihelper {
  static CustomButton({required VoidCallback callback,required String buttonname}){
 return SizedBox(
  height: 45,
  width: 350,
  child: ElevatedButton(onPressed: (){
    callback();
  },style: ElevatedButton.styleFrom(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(40),
    )
  ),
   child: Text(
    buttonname,style: 
    TextStyle(
      fontSize: 14,
      color: Colors.white),
      ),
      ),
 );
}
 static CustomText({required String text,required double height, Color? color,FontWeight? fontWeight}){
  return Text(text,
  style:TextStyle(
    fontSize:height,
    color:color??Color(0XFF5E5E5E),
    fontWeight: fontWeight,
    ),);
 }
 static CustomContainer(TextEditingController controller){
  return Container(
   height:50,
   width: 50,
   decoration:BoxDecoration(
    borderRadius: BorderRadius.circular(10),
    color:Color.fromARGB(217, 205, 205, 194),
   ),
   child: Padding(
     padding: const EdgeInsets.all(8.0),
     child: TextField(
      controller:controller,
      decoration: InputDecoration(
        border: InputBorder.none,
      ),
     ),
   ),
  );
 } 
}