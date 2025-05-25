import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Calls extends StatelessWidget {
  var callcontent=[
    {
      "img":"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS3lAsaRkY1bio7NHqRCtay8n-WZSMXHGBpcA&s",
      "name":"Shubham",
      "calltime":"23 sec ago",
    },
      {
      "img":"https://media.istockphoto.com/id/1388648617/photo/confident-caucasian-young-man-in-casual-denim-clothes-with-arms-crossed-looking-at-camera.jpg?s=612x612&w=0&k=20&c=YxctPklAOJMmy6Tolyvn45rJL3puk5RlKt39FO46ZeA=",
      "name":"Micheal",
      "calltime":"2 min ago",
    },
     {
      "img":"https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
      "name":"janne",
      "calltime":"30 min ago",
    },
     {
      "img":"https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name":"joy",
      "calltime":"45 min ago",
    },
     {
      "img":"https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740",
      "name":"Sam",
      "calltime":"51 min ago",
    },
     {
      "img":"https://www.shutterstock.com/image-photo/fashion-industry-black-woman-designer-600nw-2235667567.jpg",
      "name":"Sara",
      "calltime":"57 min ago",
    },
     {
      "img":"https://www.jamsadr.com/images/neutrals/person-donald-900x1080.jpg",
      "name":"Mr.Kim",
      "calltime":"1 hour ago",
    },
  ];
  // const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 10,),
          Row(
            children: [
              SizedBox(width: 15,),
              Uihelper.CustomText(text: "Recent Calls", height: 20,),
            ],
          ),
          SizedBox(height: 10,),
           Expanded(
                child: ListView.builder(itemBuilder: (context,index){
                  return ListTile(
                    leading: CircleAvatar(
                      radius: 25,
                      backgroundImage: NetworkImage(callcontent[index]["img"].toString()),
                    ),
                    title: Uihelper.CustomText(text: callcontent[index]["name"].toString(), height: 18,color: Color.fromARGB(255, 12, 12, 12),fontWeight: FontWeight.bold),
                    subtitle: Uihelper.CustomText(text: callcontent[index]["calltime"].toString(), height: 15,color: Color(0XFF889095)),
                    trailing: Icon(Icons.call,color: Colors.teal,),
                  );
                },itemCount: callcontent.length,),
              )
        ],
      )
    );
  }
}