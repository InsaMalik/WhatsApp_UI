
import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Chats extends StatelessWidget {
 var arrContent=[
  {
    "images":"https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
    "name":"Arona",
    "lastMessage":"Hi, how are you?",
    "time":"2:00 PM",
    "msg":"2",
  },
   {
    "images":"https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg",
    "name":"Yennefer",
    "lastMessage":"okie,lets meet today?",
    "time":"1:00 PM",
    "msg":"1",
  },
  {
    "images":"https://media.istockphoto.com/id/92806073/photo/mother-and-son.jpg?s=170667a&w=0&k=20&c=oOoeTaQ7FA_yrK-hHxGg5J4DGnTizfmigxd5iL6ehSc=",
    "name":"Sara",
    "lastMessage":"Good Nigth",
    "time":"2:00 PM",
    "msg":"2",
  },
   {
    "images":"https://i.pinimg.com/736x/2e/76/9d/2e769d14b35a9627065c30e6dbf09001.jpg",
    "name":"Ali",
    "lastMessage":"okie,Have a Good day!",
    "time":"4:09 PM",
    "msg":"1",
  },
 {
    "images":"https://www.shutterstock.com/shutterstock/photos/2151833739/display_1500/stock-photo-portrait-of-a-young-latin-woman-with-pleasant-smile-and-crossed-arms-isolated-on-grey-wall-with-2151833739.jpg",
    "name":"Wania",
    "lastMessage":"bye...",
    "time":"4:00 PM",
    "msg":"2",
  },
   {
    "images":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStX_80nNHMbjfqg_RLFVvmfb4s7t4K7RH5tw&s",
    "name":"Maryam",
    "lastMessage":"okie,AS you wish..",
    "time":"3:00 PM",
    "msg":"1",
  },
   {
    "images":"https://static.vecteezy.com/system/resources/previews/026/408/779/non_2x/woman-mobile-camera-home-emotion-person-selfie-blogger-phone-smartphone-photo.jpg",
    "name":"Rimsha",
    "lastMessage":"seen you tomorror",
    "time":"2:30 PM",
    "msg":"2",
  },
   {
    "images":"https://www.shutterstock.com/image-photo/handsome-happy-african-american-bearded-600nw-2460702995.jpg",
    "name":"Taimoor",
    "lastMessage":"okie, let me confirm",
    "time":"2:00 PM",
    "msg":"1",
  },
  {
    "images":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3lAsaRkY1bio7NHqRCtay8n-WZSMXHGBpcA&s",
    "name":"Irtaza",
    "lastMessage":"Hi, how are you?",
    "time":"1:59 PM",
    "msg":"2",
  },
   {
    "images":"https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg",
    "name":"Zainab",
    "lastMessage":"okie,lets meet today?",
    "time":"1:50 PM",
    "msg":"1",
  },
  {
    "images":"https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
    "name":"Iqra",
    "lastMessage":"Hi, how are you?",
    "time":"1:40 PM",
    "msg":"2",
  },
   {
    "images":"https://img.freepik.com/free-photo/lifestyle-people-emotions-casual-concept-confident-nice-smiling-asian-woman-cross-arms-chest-confident-ready-help-listening-coworkers-taking-part-conversation_1258-59335.jpg",
    "name":"Fatima",
    "lastMessage":"okie,lets meet today?",
    "time":"1:30 PM",
    "msg":"1",
  },
  {
    "images":"https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
    "name":"Yasmeen",
    "lastMessage":"Hi, how are you?",
    "time":"1:20 PM",
    "msg":"2",
  },
   {
    "images":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqcVXIgWCvTbb55lDj91N_g2rd0F3rma21CA&s",
     "name":"Malik",
    "lastMessage":"okie,lets meet today?",
    "time":"1:00 PM",
    "msg":"1",
  },
 ];
  // const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      body: Column(
        children: [
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(itemBuilder:(context,index){
            return ListTile(
              leading: CircleAvatar(
                radius: 40,
                backgroundImage: NetworkImage(arrContent[index]["images"].toString()),
              ),
              title: Uihelper.CustomText(text: arrContent[index]["name"].toString(), height: 14,color: Color.fromARGB(255, 12, 12, 12),fontWeight: FontWeight.bold),
              subtitle: Uihelper.CustomText(text: arrContent[index]["lastMessage"].toString(), height: 13,color: Color(0XFF889095)),
              trailing: Column(
                mainAxisAlignment:MainAxisAlignment.center,
                children: [
                  Uihelper.CustomText(text: arrContent[index]["time"].toString(), height: 12,color: Color(0XFF889095)),
                  CircleAvatar(
                    radius:8,
                    backgroundColor: Color(0XFF00A884),
                    child: Uihelper.CustomText(text: arrContent[index]["msg"].toString(), height: 12,color: Colors.white),
                  )
                ],
              )
            );
            },itemCount:arrContent.length
            ),
          ),
        ],
      ),
      floatingActionButton: CircleAvatar(
        radius: 35,
        backgroundColor: Color(0XFF00A884),
        child: Image.asset("assets/images/chat.png",height: 25,fit: BoxFit.cover,),
      )
   );
  }
}