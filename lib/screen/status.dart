import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Status extends StatelessWidget {
  var statuscontent=[
    {
      "img":"https://media.istockphoto.com/id/1388648617/photo/confident-caucasian-young-man-in-casual-denim-clothes-with-arms-crossed-looking-at-camera.jpg?s=612x612&w=0&k=20&c=YxctPklAOJMmy6Tolyvn45rJL3puk5RlKt39FO46ZeA=",
      "name":"Micheal",
      "Statustime":"2 min ago",
    },
     {
      "img":"https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cGVyc29ufGVufDB8fDB8fHww",
      "name":"janne",
      "Statustime":"30 min ago",
    },
     {
      "img":"https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg",
      "name":"joy",
      "Statustime":"45 min ago",
    },
     {
      "img":"https://img.freepik.com/free-photo/young-bearded-man-with-striped-shirt_273609-5677.jpg?semt=ais_hybrid&w=740",
      "name":"Sam",
      "Statustime":"51 min ago",
    },
     {
      "img":"https://www.shutterstock.com/image-photo/fashion-industry-black-woman-designer-600nw-2235667567.jpg",
      "name":"Sara",
      "Statustime":"57 min ago",
    },
     {
      "img":"https://www.jamsadr.com/images/neutrals/person-donald-900x1080.jpg",
      "name":"Mr.Kim",
      "Statustime":"1 hour ago",
    },
  ];
  // const Status({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children :[
          SizedBox(height: 30,),
          Row(
            children: [
               SizedBox(width:20,),
               Uihelper.CustomText(text: 'Status', height: 20,color: Color(0XFF00A884), fontWeight: FontWeight.bold),],
          ),
          SizedBox(height: 10,),
          ListTile(
            leading: Padding(
              padding: const EdgeInsets.only(left:5),
              child: Stack(
                children: [CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage("https://s3.amazonaws.com/37assets/svn/765-default-avatar.png"),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: CircleAvatar(
                    radius: 10,
                    backgroundColor: Color(0XFF00A884),
                    child: Center(child: Icon(Icons.add,size: 15,color: Colors.white,)),
                  ),
                )
                
        ]),
            ),
           title:Uihelper.CustomText(text: 'My Status', height: 20,color: Color(0XFF5E5E5E),),
           subtitle:Uihelper.CustomText(text: 'Tap to add status update', height: 15,color: Color(0XFF5E5E5E),),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.only(left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Uihelper.CustomText(text: 'Recent updates', height: 20,color: Color(0XFF5E5E5E), fontWeight: FontWeight.bold),
                Icon(Icons.arrow_drop_down,color: Color(0XFF5E5E5E),),
            ],),
          ),
          SizedBox(height: 10,),
          Expanded(
            child: ListView.builder(itemBuilder: (context,index){
              return ListTile(
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(statuscontent[index]["img"].toString()),
                ),
                title: Uihelper.CustomText(text: statuscontent[index]["name"].toString(), height: 16,color: Color(0XFF5E5E5E), fontWeight: FontWeight.bold),
                subtitle: Uihelper.CustomText(text: statuscontent[index]["Statustime"].toString(), height: 14,color: Color(0XFF5E5E5E),),
              );
            },itemCount: statuscontent.length,),
          )
        ],
      ),
    );
  }
}