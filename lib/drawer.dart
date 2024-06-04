import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DrawerExample(),
  ));
}

class DrawerExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.yellow,
title: Text("Drawer"),
      ),
      drawer: Drawer(
        backgroundColor: Colors.yellow[100],

child: ListView(
  children: [
    UserAccountsDrawerHeader(accountName: Text("Ambhika"),
        accountEmail: Text("Ambu@gmail.com"),
     currentAccountPicture:CircleAvatar(
       backgroundImage: AssetImage("assets/images/p3.jpeg"),

     ) ,
    otherAccountsPictures: [
      CircleAvatar(
        backgroundImage: AssetImage("assets/images/p4.png"),
      ),

    ],

    decoration: BoxDecoration(

image: DecorationImage(image: AssetImage("assets/images/dry-tree.webp"),fit: BoxFit.fill)    ),
    ),


    ListTile(

      leading: Icon(Icons.home),
      title: Text("Home"),
    ),
    ListTile(

      leading: Icon(Icons.people),
      title: Text("Share"),
    ),
    ListTile(

      leading: Icon(Icons.settings),
      title: Text("Settings"),
    ),
    ListTile(

      leading: Icon(Icons.logout),
      title: Text("Log out"),
    ),
    ListTile(

      leading: Icon(Icons.upload_file),
      title: Text("Home"),
    ),
  ],
),
      ),
    );
  }
}
