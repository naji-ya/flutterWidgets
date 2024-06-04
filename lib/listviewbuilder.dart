import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListViewBuilder(),
  ));
}
class ListViewBuilder extends StatelessWidget {
 var name=["Amal","Aysha","Anagha","Banu","Chacko","Dilna"];
 var phone=["9977836450","9374562397","9374629837","9836426475","0453782938","8935467328"];
 var image=["assets/images/p1.webp","assets/images/p2.png","assets/images/p3.jpeg","assets/images/p4.png",
            "assets/images/p2.png","assets/images/p1.webp"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Listview Builder Example"),
      //   backgroundColor: Colors.grey,
      // ),
      body: ListView.builder(
        itemCount: name.length,
        itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(left: 10,right: 10),
          child: Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            color: Colors.yellow.shade300,
            child: ListTile(
              leading: CircleAvatar(
                backgroundImage: AssetImage(image[index]),

              ),
              title: Text(name[index]),
              subtitle: Text(phone[index]),
              trailing: Icon(Icons.call),
            ),

          ),
        );
      },
       ),
    );
  }
}
