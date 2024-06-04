import 'package:flutter/material.dart';

void main(){

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  SeperatorList(),
  ));
}

class SeperatorList extends StatelessWidget {
  var month=["January","February","March","April","May","June","July","August","September","October","November","December"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue.shade800,
        title: const Text("Calender"),

      ),
      body:
      Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.separated(itemBuilder: (context,index){
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10)
            ),
            elevation: 7,
            color: Colors.blue.shade400,
            child: ListTile(title: Text(month[index],
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
              ,)),
          );

        },
            separatorBuilder: (context,index){
          if(index % 4==0){
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              elevation: 7,
              color: Colors.red.shade800,
              child: const ListTile(title: Text("Advertisement",
              style: TextStyle(
                fontSize: 25,
                color: Colors.white,
              ),)),
            );
          }
          else{
            return const SizedBox();
          }

            },
            itemCount: month.length),
      ),
    );
  }
}
