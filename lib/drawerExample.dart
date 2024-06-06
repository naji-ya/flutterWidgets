import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: DrawerExamples(),
  ));
}

class DrawerExamples extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
title: Text("Navigation Drawer"),
        automaticallyImplyLeading: true,
        backgroundColor: Colors.green.shade900,
      ),
      drawer: Drawer(

        child: ListView(
          children: const [
            UserAccountsDrawerHeader(accountName: Text("Robin Singla",
            style: TextStyle(
              color: Colors.black,fontWeight: FontWeight.bold,fontSize: 25
            ),),
                accountEmail: Text("robinsingla@gmail.com", style:TextStyle(
                    color: Colors.black45,fontSize: 20
                ),),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/Sundar-Pichai.png"),
            ),
            decoration: BoxDecoration(
              color: Colors.white,
            ),),

Divider(
  thickness: 4.0,
),
            
            ListTile(
              leading: Icon(Icons.home,
              color: Colors.black,
              size: 30,),
              title: Text("Home",style: TextStyle(
                fontSize: 20
              ),),
            ),
            ListTile(
              leading: Icon(Icons.message,
                color: Colors.black,
                size: 30,),
              title: Text("Message",style: TextStyle(
                  fontSize: 20
              ),),
            ),
            ListTile(
              leading: Icon(Icons.sync,
                color: Colors.black,
                size: 30,),
              title: Text("Sync",style: TextStyle(
                  fontSize: 20
              ),),
            ),
            ListTile(
              leading: Icon(Icons.delete,
                color: Colors.black,
                size: 30,),
              title: Text("Trash",style: TextStyle(
                  fontSize: 20
              ),),
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.black,
                size: 30,),
              title: Text("Settings",style: TextStyle(
                  fontSize: 20
              ),),
            ),

            Divider(thickness: 4.0,),
            Text("Profile",
            style: TextStyle(
              color: Colors.black45,
              fontSize: 20,
            ),),

            ListTile(
              leading: Icon(Icons.login,
                color: Colors.black,
                size: 30,),
              title: Text("Login",style: TextStyle(
                  fontSize: 20
              ),),
            ),

            Divider(thickness: 4.0),
            Text("Communicate",
              style: TextStyle(
                color: Colors.black45,
                fontSize: 20,
              ),),


            ListTile(
              leading: Icon(Icons.share,
                color: Colors.black,
                size: 30,),
              title: Text("Share",style: TextStyle(
                  fontSize: 20
              ),),
            ),
            ListTile(
              leading: Icon(Icons.rate_review_outlined,
                color: Colors.black,
                size: 30,),
              title: Text("Rate Us",style: TextStyle(
                  fontSize: 20
              ),),
            ),
          ],

        ),
      ),
    );
  }
}
