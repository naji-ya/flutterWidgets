import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackProfileExample(),
  ));
}

class StackProfileExample extends StatefulWidget {


  @override
  State<StackProfileExample> createState() => _StackProfileExampleState();
}

class _StackProfileExampleState extends State<StackProfileExample> {

  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey.shade50,
bottomNavigationBar: SalomonBottomBar(
  
  unselectedItemColor: Colors.blueGrey.shade800 ,
selectedColorOpacity: 0.8,
  currentIndex: _currentIndex,
  onTap: (i) => setState(() => _currentIndex = i),
  items: [
    /// Home
    SalomonBottomBarItem(
      icon: Icon(FontAwesomeIcons.home,
      color: Colors.white,),
      title: Text("Home",
      style: TextStyle(
        color: Colors.white,
      ),),
      selectedColor: Colors.blueGrey.shade800,
      unselectedColor: Colors.blueGrey.shade800,

    ),


    SalomonBottomBarItem(
      icon: Icon(FontAwesomeIcons.search),
      title: Text("Search"),
      selectedColor: Colors.blueGrey.shade800,
      unselectedColor: Colors.blueGrey.shade800,
    ),


    SalomonBottomBarItem(
      icon: Icon(Icons.pie_chart),
      title: Text("Area"),
      selectedColor: Colors.blueGrey.shade800,
      unselectedColor: Colors.blueGrey.shade800,
    ),

   
    SalomonBottomBarItem(
      icon: Icon(Icons.person),
      title: Text("Account"),

      selectedColor: Colors.blueGrey.shade800,
      unselectedColor: Colors.blueGrey.shade800,
    ),
  ],
),
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Container(
              height: 300,
              width: 550,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.blueGrey,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:40,right: 330),
                    child: Icon(Icons.menu,
                    color: Colors.white,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(top: 30,right:220),
                    child: Text("Profile",style: GoogleFonts.aclonica(
                      fontSize: 25,
                      color: Colors.white,
                    )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 15,right:180),
                    child: Text("Edit Your Profile",style: TextStyle(
                      fontSize: 20,
                      color: Colors.white54,

                    )),
                  ),


                ],
              ),
            ),

          ),
          Stack(
            children: [
              Positioned(
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/images/profileimage.jpg"),
                  radius: 60,
                ),
                top: 240,
                right:150,
              ),

              Positioned(child: Text("Mishal Haneef",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey.shade600
              ),),
              top: 400,
              right: 135,                )


            ],
          ),

          Positioned(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade100,
                borderRadius: BorderRadius.circular(15)
              ),
              child:ListTile(
                leading: Icon(Icons.person,
                    color: Colors.blueGrey.shade600),
                title: Text("My Account",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blueGrey.shade600
                  ),) ,
              ),

            ),
            height:60 ,
            width: 300,
            top: 460,
            left: 60,
          ),

      Positioned(
    child: Container(
    decoration: BoxDecoration(
    color: Colors.blueGrey.shade100,
      borderRadius: BorderRadius.circular(15)
    ),
    child:ListTile(
      leading: Icon(Icons.dashboard,
        color: Colors.blueGrey.shade600),
      title: Text("Dashboard",
      style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 18,
          color: Colors.blueGrey.shade600
      ),) ,
    )
    ),
        height:60 ,
        width: 300,
        top: 540,
        left: 60,
      ),

          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  borderRadius: BorderRadius.circular(15)
              ),
              child:ListTile(
                leading:Icon(Icons.info,
                    color: Colors.blueGrey.shade600
                ),
                  title: Text("About",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        color: Colors.blueGrey.shade600
                    ),) ,
              ),
            ),
            height:60 ,
            width: 300,
            top: 620,
            left: 60,
          ),
          Positioned(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.blueGrey.shade100,
                  borderRadius: BorderRadius.circular(15)
              ),
              child:ListTile(
                leading: Icon(Icons.logout,
                    color: Colors.blueGrey.shade600),
                title: Text("Logout",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.blueGrey.shade600
                  ),) ,
              )
            ),
            height:60 ,
            width: 300,
            top: 700,
            left: 60,
          ),




        ],
      ),
    );
  }
}
