import 'package:flutter/material.dart';
 void main(){
   runApp(MaterialApp(
     debugShowCheckedModeBanner: false,
     home: CustomlistviewwithGenerate (),
   ));
 }

class CustomlistviewwithGenerate extends StatelessWidget {
   var name =["aaana","aama","aaala","aaana","aama","aaala","aaana","aama","aaala"];
   var color=[Colors.pinkAccent,Colors.pink,Colors.purple,Colors.pinkAccent,Colors.pink,Colors.purple,Colors.pinkAccent,Colors.pink,Colors.purple];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent,
      ),
      body: 
      ListView.custom(childrenDelegate: SliverChildListDelegate(
        List.generate(name.length, (index){
          return Card(color: color[index],
          child: ListTile(
          title: Text(name[index]),
    trailing: Icon(Icons.call),
          ),
          );
      }
      ),
      ),),
      
    );
  }
}