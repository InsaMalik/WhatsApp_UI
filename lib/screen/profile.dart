import 'dart:ffi';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:whatsapp/screen/homescreen.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class profilescreen extends StatefulWidget {
  @override
  State<profilescreen> createState() => _profilescreenState();
}

class _profilescreenState extends State<profilescreen> {
  TextEditingController namecontroller=TextEditingController();

  File?_pickImage;
  


  // get context => null;

  // const profilescreen({super.key});
  @override
  Widget build(BuildContext context) {
    var pickedimage=_pickImage;
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 80,),
            Uihelper.CustomText(text: "Profile info", height: 20,color:Color(0XFF00A884),fontWeight:FontWeight.bold),
            SizedBox(height: 30,),
            Uihelper.CustomText(text: "Please provide your name and an optional", height: 15,color:Color(0XFF5E5E5E),),
            SizedBox(height: 5,),
            Uihelper.CustomText(text: "profile photo", height: 15,color:Color(0XFF5E5E5E),),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: (){_openbottom(context);},
              child:pickedimage==null? CircleAvatar(
              radius: 90,
              backgroundColor: Color.fromARGB(217, 204, 204, 200),
              child: Image.asset("assets/images/photo-camera 1.png",height: 50,fit: BoxFit.cover,),
              ): CircleAvatar(
                radius: 90,
                backgroundImage: FileImage(pickedimage!),
                backgroundColor: Color.fromARGB(217, 204, 204, 200),
              ),
            ),
             SizedBox(height: 30,),
          
          Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: [
             
              SizedBox(
                width: 300,
                child: TextField(
                  keyboardType: TextInputType.name,
                  controller: namecontroller,
                  decoration: InputDecoration(
                    hintText:"Type Your Name here",
                    hintStyle: TextStyle(color:Color(0XFF5E5E5E),),
                    border:UnderlineInputBorder(
                    borderSide: BorderSide(color: Color(0XFF05AA82),),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0XFF05AA82),),
                    ),
                    focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Color(0XFF05AA82),),
                    )
                  ),
                ),
              ),
              SizedBox(width: 8,),
              Image.asset("assets/images/happy.png"),
            ],
          ),
          ],
        
        ),
      ),
      floatingActionButton: Uihelper.CustomButton(callback:(){
      Navigator.push(context, MaterialPageRoute(builder: (context) => Homescreen()));
      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }

_openbottom(BuildContext content)
  {
    return showModalBottomSheet(context:context, builder: (BuildContext context){
      return Container(
        height:200,
        width:200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(onPressed: (){
             _pickImage=void_pickImage(ImageSource.camera);
            }, icon: Icon(Icons.camera_alt_outlined,size: 80, color:Colors.grey,),),
             IconButton(onPressed: (){
              _pickImage=void_pickImage(ImageSource.gallery);
             }, icon: Icon(Icons.image,size: 80, color: Colors.grey,),),
           
          ],)
         ],),
      );
    }
    );
  }

void_pickImage(ImageSource imagesource)async{
  try{
    final photo=await ImagePicker().pickImage(source: imagesource);
    if(photo==null)return;
    final temimage=File(photo.path);
    setState(() {
      _pickImage=temimage;
    });
    
  }
  catch(ex){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar
    (content: Text(ex.toString()),backgroundColor: Color(0XFF05AA82),
    ));
  }
  }
}