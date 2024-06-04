import 'package:flutter/material.dart';


class ListviewChats extends StatelessWidget {
  var chatsImages=["assets/images/mark-zuckerberg2.webp",
    "assets/images/billgates.jpg",
  "assets/images/Sundar-Pichai.png",
  "assets/images/elonmask.webp",
  "assets/images/tim-cook.jpg",
  "assets/images/satya nadella.jpg",
  "assets/images/warrenbuffet.jpg",
  "assets/images/teve-jobsjpg.jpg"];

  var name=["Mark Zukerberg",
  "Bill Gates",
  "Sundar Pichai",
  "Elon Mask",
  "Tim Cook",
  "Satya Nadella",
  "Warren Buffet",
  "Steve Jobs"];

  var description=["Introducing IGTV on Instagram",
  "Tried Linux and I loved it! :p",
  "Gotta add a pinch of ML in every single tech!",
  "You need some funding?",
  "Finally,switching to Android..",
  "Alexa sucks! Google Assistant is the boss!",
      " iam the richest in the list",
  "Tim couldn't continue my legacy,unfortunately!"];

  var time=["9:11 PM ","8:47 PM","7:07 PM","6:33 PM","3:55 PM","1:27 PM","11:08 AM","YERSTURDAY"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: ListView.builder(itemBuilder:(context,index){
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(chatsImages[index]),
            ),
            title: Text(name[index],style: TextStyle(
              fontSize: 20,
            ),),
            subtitle: Text(description[index],style: TextStyle(
              fontSize: 18
            ),),
            trailing: Text(time[index]),

          ),
          
        );
      },itemCount:name.length ,),
    );
  }
}
