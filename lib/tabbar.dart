 
import 'package:flutter/material.dart';
import 'package:untitled1/staggeredGridview.dart';

import 'GridViewextend.dart';
import 'listviewcustom.dart';
void main(){
runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: TabbarExample(),
));
}

class TabbarExample extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.brown,

          title: Text("Tab Bar"),
          bottom: TabBar(

            unselectedLabelColor: Colors.black,
              labelColor: Colors.white,
             indicatorColor: Colors.blue,
indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
            Tab(icon: Icon(Icons.camera_alt_outlined),),
            Tab(
              text: "Status",
            ),
            Tab(text: "Chat",),
            Tab(text: "Calls",),
            
          ]),
        ),
        body: TabBarView(children: [
        Center(
          child:Text("Camera"),
        ),
          CustomListview(),
          GridviewExtend(),
          StaggeredgridView(),
      ]
        ),
      ),
    );
  }
}
