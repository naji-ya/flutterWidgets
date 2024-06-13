

import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: Backpress(),
  ));
}

class Backpress extends StatelessWidget {



  @override
  Widget build(BuildContext context) {

    Future<bool> showDialogPop() async{
      return await showDialog(context: context, builder: (context){
        return AlertDialog(
          title: Text("Exit !!"),
          content: Text("Do you want exit?"),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop(true);
            }, child: Text("Yes")),
            TextButton(onPressed: (){
              Navigator.of(context).pop(false);
            }, child: Text("No"))
          ],
        );
      });
    }
    return WillPopScope( onWillPop: showDialogPop,child:
      Scaffold(
        
        
        body: Center(
          child: Text("Welcome"),
        ),
      ));
  }
}
