import 'package:flutter/material.dart';

class listviewCalls extends StatelessWidget {

  var images=["assets/images/mark-zuckerberg2.webp",
  "assets/images/billgates.jpg",
  "assets/images/Sundar-Pichai.png",
  "assets/images/elonmask.webp",
  "assets/images/tim-cook.jpg"];
  var name=["Mark Zukerberg",
  "Bill Gates",
  "Sundar Pichai",
  "Elon Mask",
  "Tim Cook"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(itemBuilder: (context,index){
       return Card(

         child: CircleAvatar(
           backgroundImage: AssetImage(images[index]),
         ),
        );
      },
      itemCount: images.length,),
    );
  }
}
