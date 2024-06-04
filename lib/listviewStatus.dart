import 'package:flutter/material.dart';

class listviewStatus extends StatelessWidget {
  var name=["Mark Zukerberg",
    "Bill Gates",
    "Sundar Pichai",
    "Elon Mask",
   ];
  var statusImages=[
    "assets/images/im1.jpg",
    "assets/images/im3.jpg",
    "assets/images/im5.jpg",
    "assets/images/im2.webp"
  ];

  var time=["9:11 PM ","8:47 PM","7:07 PM","11:08 AM","YERSTURDAY"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
        return Card(
          
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(statusImages[index]),
              
            ),
            title: Text(name[index]),
            trailing: Text(time[index]),
          ),
        );
      },
      itemCount: name.length,),
    );
  }
}
