import 'package:flutter/material.dart';
import 'package:whatsapp/screen/calls.dart';
import 'package:whatsapp/screen/camera.dart';
import 'package:whatsapp/screen/chats.dart';
import 'package:whatsapp/screen/status.dart';
import 'package:whatsapp/widgets/uihelper.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          bottom: TabBar(tabs: [
            Tab(icon:Icon(Icons.camera_alt),),
            Tab(text:"Chats"),
            Tab(text:"Status"),
            Tab(text:"Calls"),
          ], indicatorColor: Colors.white,),
          toolbarHeight: 100,
          title: Uihelper.CustomText(text:"WhatsApp", height: 18,color: Colors.white,fontWeight: FontWeight.bold),
          actions: [
            IconButton(onPressed: (){}, icon: Image.asset("assets/images/Search.png",height: 25,fit: BoxFit.cover,)),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,color: Colors.white,)),
          ],
        ),
        body:TabBarView(children: [
          Camera(),
          Chats(),
          Status(),
          Calls(),
        ]),
      ),
    );
  }
}