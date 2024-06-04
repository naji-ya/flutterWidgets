import 'package:flutter/material.dart';

class FamHomePage extends StatelessWidget {


  var image=["assets/images/calendar-icon.png","assets/images/groceries.png","assets/images/placeholder.png","assets/images/circus-tent-icon.png","assets/images/todo.png","assets/images/setting.png"];
  var name=["Calender","Groceries","Locations","Activity","To do","Settings"];
  var descp=[
    "March,Wednesday",
    "Bocall, Apple",
    " Lucy Maon going to office",
    "Rose favirited your post",
  "Homework, Design",
  "  "];
  var label=["3 Events",
  "4 Items"," "," ","4 Items","2 Items"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff392950),
appBar: AppBar(
  backgroundColor:Color(0xff392950) ,

  elevation: 0,
  automaticallyImplyLeading: false,
  actions: [Padding(
    padding: const EdgeInsets.only(right: 30,bottom: 25),
    child: Icon(Icons.message,size: 30,),
  )],
  title: Padding(
    padding: const EdgeInsets.only(top: 5,left:20),
    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text("My Family",
        style: TextStyle(
          fontSize: 25
        ),),
        SizedBox(
          height: 5,
        ),
        Text("Home",
        style: TextStyle(
          color: Colors.white30
        ),),
      ],
    ),
  ),
),

      body:
      Padding(
        padding: const EdgeInsets.only(top: 100,left: 20,right: 20),
        child: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: image.length,
            itemBuilder: (context,index){
          return Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            margin: EdgeInsets.all(8),
            color: Colors.transparent,
child: Column(mainAxisAlignment: MainAxisAlignment.center,
  children: [
  Container(
    height: 40,
    width: 40,
    decoration: BoxDecoration(
      image: DecorationImage(image: AssetImage(image[index])),
    ),
  ),
    SizedBox(
      height: 15,
    ),
    Text(name[index],style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.white
    ),),
    SizedBox(height: 10,),
    Text(descp[index],
      style: TextStyle(
          fontSize:14,

          color: Colors.white30
      ),),
    SizedBox(height: 25,),
    Text(label[index],
      style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
          color: Colors.white60
      ),),
  ],
),
          );
            }),
      ),


    );
  }
}
