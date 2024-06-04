import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: TabBarWidget(),
  ));
}

class TabBarWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(

          title: Text("GreeksForGeeks"),
          backgroundColor: Colors.green,
          bottom: TabBar(
            isScrollable: true,
              indicatorColor: Colors.white,

              tabs: [
            Tab(icon: Icon(Icons.home,
            size: 30,),text: "Home",),
            Tab(icon: Icon(Icons.account_box_outlined,
            size: 30,),text: "Account",),
            Tab(icon: Icon(Icons.alarm,
            size: 30,),text: "Alarm",),
                Tab(icon: Icon(Icons.alarm,
                  size: 30,),text: "Alarm",),
                Tab(icon: Icon(Icons.alarm,
                  size: 30,),text: "Alarm",),
            Tab(icon: Icon(Icons.menu,
            size: 30,),text: "Menu",),
            Tab(icon: Icon(Icons.settings,
            size: 30,),text: "Settings",),
            Tab(icon: Icon(Icons.camera_alt_outlined,size: 30,),text: "Camera",),

          ]),
        ),

        body: TabBarView(
            children: [
          Icon(Icons.home),
          Icon(Icons.account_box_outlined),
          Icon(Icons.alarm),
          Icon(Icons.menu),
          Icon(Icons.settings),
          Icon(Icons.camera_alt_outlined)

        ]),
      ),
    );
  }
}
