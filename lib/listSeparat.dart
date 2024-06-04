import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: ListSeparat(),
  ));
}

class ListSeparat extends StatelessWidget {
  var images=["assets/images/p1.webp","assets/images/p2.png","assets/images/p3.jpeg"];
var names=["Anagha","Abarna","Ahalya","Alan"];
var phone=["93334443312","9234844839","9383928374","9238473627"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple.shade400,
        title: Text("List Separated "),
      ),
      body: ListView.separated(itemBuilder: (context,index){
        return Card(
          color: Colors.purple.shade200,
          child: ListTile(
            leading: CircleAvatar(
              backgroundImage:AssetImage(images[index],
              ),
            ),
            title: Text(names[index]),
            subtitle: Text(phone[index]),
            trailing: Icon(Icons.phone),
          ),
        );
      },
          separatorBuilder: (context,index){
        // return Divider(
        // thickness: 4,
        // color: Colors.purple,
        // );
            if(index %2==0) {
              return Card(
child: Text("Missed call"),

              );
            }
            else{
              return SizedBox();
            }
    },
          itemCount: images.length),
    );
  }
}
