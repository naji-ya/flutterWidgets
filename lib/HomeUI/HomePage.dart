import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomePageUI(),
  ));
}
class HomePageUI extends StatelessWidget {
  var icons=["assets/images/lamp.webp","assets/images/television.jpg",
  "assets/images/airconditioner.png","assets/images/fridge.png",
  "assets/images/CCTV.webp"];
  
  var title=["Lamp","TV","Air Conditioner","Fridge","CCTV Cam."];
  var subtitle=["Switch the light ","Shows on tv","Control over temperature",
    "Freez fooditems",
  "you are under survilance"];
  
  var button=[ Icons.toggle_on_outlined,Icons.toggle_off_outlined,
    Icons.toggle_on_outlined,Icons.toggle_on_outlined,Icons.toggle_off_outlined];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Column(
        children: [
          Container(
            height: 260,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft:Radius.circular(45),
                bottomRight: Radius.circular(45),
              ),
              color: Colors.deepOrangeAccent[200]
            ),
            child: Stack(
              children: [

                Positioned(child: Icon(Icons.arrow_back,color: Colors.white54
                  ,size: 27,),
                top: 50,
                  left: 20,
                ),

                Positioned(
                  child: Text("Bed  Room",style: TextStyle(
                    color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30
                  ),),
                  top: 90,
                  left: 25,
                ),

                Positioned(
                  child: Text("Live in your favorate place",style: TextStyle(
                      color: Colors.white54,fontSize: 15
                  ),),
                  top: 125,
                  left: 25,
                ),
                Positioned(child: Icon(Icons.settings_outlined,color: Colors.white54,size: 27,),
                  top: 90,
                  right: 20,
                ),

                Positioned(
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(child: FaIcon(FontAwesomeIcons.temperature0,color: Colors.white60,size:30,)),
                  ),
                  top: 170,
                  left: 30,
                ),
                Positioned(
                  child: Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.white30,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Center(child: FaIcon(FontAwesomeIcons.droplet,color: Colors.white60,size:30,)),
                  ),
                  top: 170,
                  left: 200,
                ),

               Positioned(child: Text("24 C",style: TextStyle(fontSize: 22,color: Colors.white60,
                   fontWeight: FontWeight.bold),),
               top: 180,
               left: 100,),

                Positioned(child: Text("50%",style: TextStyle(fontSize: 22,color: Colors.white60,
                    fontWeight: FontWeight.bold),),
                  top: 180,
                  left: 270,),
                Positioned(child: Text("TEMP",style: TextStyle(fontSize: 15,color: Colors.white60,
                    fontWeight: FontWeight.bold),),
                  top: 205,
                  left: 100,),
                Positioned(child: Text("HUMIDITY",style: TextStyle(fontSize: 15,color: Colors.white60,
                    fontWeight: FontWeight.bold),),
                  top: 205,
                  left: 274,)



              ],
            ),
          ),

         Expanded(
           child: ListView.builder(itemCount: icons.length,
               itemBuilder: (context,index){
             return Padding(
               padding: const EdgeInsets.only(left: 25,right: 25,top: 5),
               child: Card(

                 shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                 child: Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: ListTile(

                     leading: Container(
                       height: 40,
                       width: 40,
                       child: Image(image: AssetImage(icons[index]),fit: BoxFit.fill,
                       color: Colors.deepOrangeAccent,),
                     ),
                     title: Text(title[index],style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
                     subtitle: Text(subtitle[index]),
                     trailing: Icon(button[index],size: 40,color: Colors.orange,),

                   ),
                 ),
               ),
             );

           }),
         )
        ],
      ),

    );
  }
}
