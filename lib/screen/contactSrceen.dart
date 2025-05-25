import 'package:flutter/material.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class contactsrceen extends StatelessWidget {
  var contact=[
    {
      "img":"https://media.istockphoto.com/id/1393750072/vector/flat-white-icon-man-for-web-design-silhouette-flat-illustration-vector-illustration-stock.jpg?s=612x612&w=0&k=20&c=s9hO4SpyvrDIfELozPpiB_WtzQV9KhoMUP9R9gVohoU=",
      "name":"micheal",
      "number":"+91 1234567890",
      "status":"online",
    },
    {
      "img":"https://media.istockphoto.com/id/1393750072/vector/flat-white-icon-man-for-web-design-silhouette-flat-illustration-vector-illustration-stock.jpg?s=612x612&w=0&k=20&c=s9hO4SpyvrDIfELozPpiB_WtzQV9KhoMUP9R9gVohoU=",
      "name":"Sara",
      "number":"+91 1234567890",
      "status":"busy",
    },{
      "img":"https://media.istockphoto.com/id/1393750072/vector/flat-white-icon-man-for-web-design-silhouette-flat-illustration-vector-illustration-stock.jpg?s=612x612&w=0&k=20&c=s9hO4SpyvrDIfELozPpiB_WtzQV9KhoMUP9R9gVohoU=",
      "name":"maryam",
      "number":"+91 1234567890",
      "status":"online",
    },{
      "img":"https://media.istockphoto.com/id/1393750072/vector/flat-white-icon-man-for-web-design-silhouette-flat-illustration-vector-illustration-stock.jpg?s=612x612&w=0&k=20&c=s9hO4SpyvrDIfELozPpiB_WtzQV9KhoMUP9R9gVohoU=",
      "name":"wania",
      "number":"+91 1234567890",
      "status":"offline",
    },{
      "img":"https://media.istockphoto.com/id/1393750072/vector/flat-white-icon-man-for-web-design-silhouette-flat-illustration-vector-illustration-stock.jpg?s=612x612&w=0&k=20&c=s9hO4SpyvrDIfELozPpiB_WtzQV9KhoMUP9R9gVohoU=",
      "name":"taimoor",
      "number":"+91 1234567890",
      "status":"online",
    },
  ];
  // const contactsrceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Uihelper.CustomText(text: "contacts", height: 16,color: Colors.white,fontWeight: FontWeight.bold),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,))
        ],
      ),
      body: Expanded(
        child: ListView.builder(itemBuilder: (context,index){
           return ListTile(
             leading: CircleAvatar(
               radius: 25,
               backgroundImage: NetworkImage(contact[index]["img"].toString()),
             ),
             title: Uihelper.CustomText(text: contact[index]["name"].toString(), height: 18,color: Color.fromARGB(255, 12, 12, 12),fontWeight: FontWeight.bold),
             subtitle: Uihelper.CustomText(text: contact[index]["number"].toString(), height: 15,color: Color(0XFF889095)),
             
           );
        },itemCount: contact.length,),
      ),
    );
  }
}