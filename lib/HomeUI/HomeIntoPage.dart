
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:motion_tab_bar/MotionTabBar.dart';

import 'HomeBottomNaviBar.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: HomeIntroPage(),
  ));
}

class HomeIntroPage extends StatefulWidget {


  @override
  State<HomeIntroPage> createState() => _HomeIntroPageState();
}

class _HomeIntroPageState extends State<HomeIntroPage> {



  var tilteText = [
    "Living Room",
    "Bed Room",
    " Guest Room",
    "Kitchen",
    "Kids Room",
    "Balconey"
  ];

  var subtitleText = [
    "big sized sofa and pillows",
    "A double Sized bed with 2 pillows",
    "Queen Sized bed and blanket",
    "Fully furnished kitchen ",
    "2 small bed for kids & study table",
    "Beautiful view of nature"
  ];

  var count = [
    "4 Persons",
    "3 Persons",
    "2 Persons",
    "5 Persons",
    "2 Person ",
    "4 Persons"
  ];

  var icons = [
    Icons.toggle_on_outlined,
    Icons.toggle_on_outlined,
    Icons.toggle_off_outlined,
    Icons.toggle_on_outlined,
    Icons.toggle_on_outlined,
    Icons.toggle_off_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
bottomNavigationBar:  MotionTabBar(
  initialSelectedTab: "Add",
  useSafeArea: true, // default: true, apply safe area wrapper
  labels: const ["Home", "Clock", "Add", "Leaderboard","Settings"],
  icons: const [CupertinoIcons.home, CupertinoIcons.clock, CupertinoIcons.add, Icons.leaderboard,Icons.settings_outlined],

  tabSize: 50,
  tabBarHeight: 50,
  textStyle: const TextStyle(
    fontSize: 12,
    color: Colors.white,
    fontWeight: FontWeight.w500,
  ),
  tabIconColor: Colors.grey,
  tabIconSize: 28.0,
  tabIconSelectedSize: 26.0,
  tabSelectedColor: Colors.deepOrangeAccent,
  tabIconSelectedColor: Colors.white,
  tabBarColor: Colors.white,
),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 30,
            ),
            CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage("assets/images/malepics.jpg"),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Hi Samuel",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.white70),
            ),
            SizedBox(
              height: 7,
            ),
            Text(
              "Welcome to Home",
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.white30,
                  fontWeight: FontWeight.bold),
            ),
            Expanded(
                child: GridView.builder(padding: EdgeInsets.only(top: 20),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),itemCount: tilteText.length,
                    itemBuilder: (context, index) {
                      return Card(margin: EdgeInsets.all(7),

                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(17)),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(tilteText[index],style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),),
                              SizedBox(height: 10,),
                              Text(subtitleText[index],style: TextStyle(
                                fontSize: 12,color: Colors.black54
                              ),),
                              SizedBox(height: 20,),
                              Text(count[index],style: TextStyle(color: Colors.deepOrange),),
                              SizedBox(height: 10,),
                              Icon(icons[index],color: Colors.deepOrangeAccent,size: 30,),
                            ],
                          ),
                        ),
                      );
                    })),

          ],
        ),
      ),
    );
  }
}
