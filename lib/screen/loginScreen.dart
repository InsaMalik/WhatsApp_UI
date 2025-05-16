import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class loginscreen extends StatefulWidget {
  @override
  State<loginscreen> createState() => _loginscreenState();
}

class _loginscreenState extends State<loginscreen> {
  TextEditingController phoneController=TextEditingController();
  String selectedCountry="Pakistan";

  List<String>countries=[
    "America",
    "India",
    "Pakistan",
    "Australia",
    "Srilanka",
    "Nepal",
    "Bangladesh",
  ];

  // const loginscreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.white,
      //   title: Uihelper.CustomText(text: 'Enter Your Phone Number', height: 14,color: Color(0XFF00A884), fontWeight: FontWeight.bold),
      // ),
      body: Column(
        children: [
          SizedBox(height: 80,),
          Center(child: Uihelper.CustomText(text: 'Enter Your Phone Number', height: 20,color: Color(0XFF00A884), fontWeight: FontWeight.bold),),
          SizedBox(height: 30,),
          Uihelper.CustomText(text: "WhatsApp will need to verify your phone", height: 16,color: Color(0XFF5E5E5E),),
          SizedBox(height: 5,),
          Uihelper.CustomText(text: " number.Carrier charges may apply ", height: 16,color: Color(0XFF5E5E5E),),
          SizedBox(height: 7,),
          Uihelper.CustomText(text: " What’s my number? ", height: 16,color: Color(0XFF00A884),),
          SizedBox(height: 50,),
          Padding(
            padding: const EdgeInsets.only(left:60,right: 60),
            child: DropdownButtonFormField(
              items: countries.map((String country){
              return DropdownMenuItem(
              child: Text(
                country.toString()),
                value: country,);
            }).toList(), 
            onChanged: (value){
              setState(() {
                selectedCountry=value!;
              });
            },value:selectedCountry,decoration: InputDecoration(
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color:Color(0XFF00A884))
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color:Color(0XFF00A884))
              ),
            ),),
          ),
          SizedBox(height: 30,),
          Row(
             mainAxisAlignment:MainAxisAlignment.center,
            children: [
              SizedBox(
                width:40,
                child: Padding(
                  padding: const EdgeInsets.only(top: 5),
                  child: TextField(
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      hintText: "+92",
                      border:UnderlineInputBorder(
                        borderSide: BorderSide(color:Color(0XFF00A884)),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Color(0XFF00A884)),
                      ),
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color:Color(0XFF00A884)),
                      ),
                    ),
                    
                  ),
                ),
              ),
              SizedBox(width: 10,),
              SizedBox(
                width:250,
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller:phoneController,
                  decoration: InputDecoration(
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color:Color(0XFF00A884)),
                    )
                  ),
                ),
              ), 
            ],
          )
        ],
      ),
      floatingActionButton: Uihelper.CustomButton(callback:(){

      }, buttonname: "Next"),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}