import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StackUsingUi(),
  ));
}

class StackUsingUi extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey.shade100,
      appBar: AppBar(


        elevation: 0,
        backgroundColor:Colors.grey.shade100,
        leading: Icon(Icons.arrow_back,color: Colors.black,),
        
        actions: [
          Icon(Icons.menu,color: Colors.black,)],
      ),
      body:
      SingleChildScrollView(
        child: Column(

          children: [
           Center(
             child: CircleAvatar(

  backgroundImage:AssetImage("assets/images/mark-zuckerberg2.webp") ,

  radius: 70,

),
           ),
            Padding(
              padding: const EdgeInsets.only(top: 50,right: 50,left: 60),
              child: Row(
                children: [

                  Image(image: AssetImage("assets/images/facebook (1).png"),height: 50,width:50,),
                  SizedBox(
                    width: 25,
                  ),
                  Image(image: AssetImage("assets/images/letter-g.png"),height: 50,width:50,),
                  SizedBox(
                    width: 25,
                  ),
                  Image(image: AssetImage("assets/images/twitter.png"),height: 50,width:50,),
                  SizedBox(
                    width: 25,
                  ),
                  Image(image: AssetImage("assets/images/social.png"),height: 50,width:50,),
                ],
              ),
            ),

            SizedBox(
              height:30 ,
            ),
            Text("chromicle",style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 35
            )),
            SizedBox(height: 8,),
            Text("@amFOSS",style: TextStyle(

                fontSize: 15
            )),


            Padding(
              padding: const EdgeInsets.only(top: 13,left: 25,right: 25),
              child: Text("Mobile App Developer and Open ",style: TextStyle(

                  fontSize: 23,
              )),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 4,left: 25,right: 25),
              child: Text("Source enthusiastic ",style: TextStyle(

                fontSize: 23,
              )),
            ),
            SizedBox(
              height:25,
            ),
            
            Padding(
              padding: const EdgeInsets.only(top:10,left: 30,right: 30),
              child: Card(
                color: Colors.white54,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                child: ListTile(
                  leading: FaIcon(Icons.privacy_tip_outlined,size: 30,
                    color: Colors.black87,),
                  title: Text("Privacy",style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w500,
                  ),),
trailing: Icon(Icons.arrow_forward_ios,color: Colors.black87,),            ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,left: 30,right: 30),
              child: Card(
                color: Colors.white54,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                child: ListTile(
                  leading: Icon(Icons.history,size: 30,
                    color: Colors.black87,),
                  title: Text("Purchase History",style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                  ),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black87,),            ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,left: 30,right: 30),
              child: Card(
                color: Colors.white54,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                child: ListTile(
                  leading: Icon(Icons.help_outline_sharp,size: 30,
                    color: Colors.black87,),
                  title: Text("Help & Support ",style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                  ),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black87,),            ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30,right: 30,top: 10),
              child: Card(
                color: Colors.white54,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                child: ListTile(
                  leading: Icon(Icons.settings_outlined,size: 35,
                    color: Colors.black87,),
                  title: Text("Settings",style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                  ),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black87,),            ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top:10,left: 30,right: 30),
              child: Card(
                color: Colors.white54,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(28)),
                child: ListTile(
                  leading: Icon(Icons.people_alt_outlined,size: 35,
                    color: Colors.black87,),
                  title: Text("Invite a Friend",style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.w500
                  ),),
                  trailing: Icon(Icons.arrow_forward_ios,color: Colors.black87,),            ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
