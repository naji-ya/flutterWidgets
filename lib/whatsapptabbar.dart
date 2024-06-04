import 'package:flutter/material.dart';
import 'package:untitled1/listviewCalls.dart';

import 'listviewStatus.dart';
import 'listviewbuilder.chats.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WhatsAppTabBar(),
  ));
}

class WhatsAppTabBar extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          actions: [
            Icon(Icons.more_vert_outlined)
          ],
          title: Text("WhatsApp",
          style: TextStyle(
            fontSize: 25
          ),),
          backgroundColor: Colors.green.shade900,
          bottom: TabBar(

              indicatorColor: Colors.white,
              tabs: [


            Tab(child: Text("CHATS",style: TextStyle(
              fontSize: 18
            ),),),
            Tab(child: Text("STATUS",style: TextStyle(
                fontSize: 18
            ),),),

            Tab(child: Text("CALLS",style: TextStyle(
                fontSize: 18
            ),),),
          ]),
        ),
        body: TabBarView(children: [
          ListviewChats(),
          listviewStatus(),
          listviewCalls(),
        ]),
      ),
    );
  }
}
