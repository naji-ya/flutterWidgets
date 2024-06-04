import 'package:flutter/material.dart';

// void main(){
//   runApp(MaterialApp(
//     home: CustomListview(),
//
//   ));
// }

class  CustomListview extends StatelessWidget {
  var name=["Asha","Masha","Disha","Usha"];
  var bgrp=["A+","O+","O-","AB+"];
  var phone=["97335433456","93734654355","9383635343","83635367352"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Listview Custom"),
      // ),
      body: ListView.custom(childrenDelegate: SliverChildBuilderDelegate((context, index){
        return Card(
          color: Colors.green,
          child: ListTile(
            leading: Icon(Icons.bloodtype,
            color: Colors.red.shade800,),
            title: Text(name[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            subtitle: Text(phone[index],
            style: TextStyle(
              color: Colors.black87
            ),),
            trailing: Text(bgrp[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),),
          ),
        );
      },
      childCount: name.length),
      ),
    );
  }
}
