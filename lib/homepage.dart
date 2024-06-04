import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.blue.shade400,
        title: Text("Contacts",style: TextStyle(
          fontSize:23,
          color: Colors.black,
          fontWeight: FontWeight.bold,

        ),),
      ),
      body:Container(
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/images/5153829.jpg"),
            fit: BoxFit.fill,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 50,left: 20,right: 20),
          child: ListView(

            children: [
              Card(elevation: 2,
                color: Colors.blue.shade200,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/p1.webp"),
                    ),

                  title: Text("Ashraf"),
                  subtitle: Text("9447444827"),
                  trailing: Icon(Icons.call),


                ),
              ),

              Card(
                elevation: 2,
                color: Colors.blue.shade200,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: CircleAvatar(backgroundImage: AssetImage("assets/images/p2.png"),
                  ),
                  title: Text("Sakkeena"),
                  subtitle: Text("9947678913"),
                  trailing: Icon(Icons.call),
                ),
              ),
              Card(elevation: 2,
                color: Colors.blue.shade200,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/p3.jpeg"),
                  ),

                  title: Text("Dilshad"),
                  subtitle: Text("8129396557"),
                  trailing: Icon(Icons.call),

                ),
              ),
              Card(
                color: Colors.blue.shade200,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage("assets/images/p4.png"),
                    
                  ),
                  title: Text("Rinoob"),
                  subtitle: Text("8129647465"),
                  trailing: Icon(Icons.call),
                ),
              )

            ],
          ),
        ),

      ),
    );
  }
}
