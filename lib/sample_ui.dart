import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    home: facebook(),
  ));
}

class facebook extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return  Scaffold(

      body: Container(
        width:double.infinity,
        color: Colors.black,

        child:  Center(
          child: Column(mainAxisAlignment:MainAxisAlignment.center,
            children: [
              Icon(Icons.facebook,
                size: 35,
                color: Colors.blue,),
              Text("facebook",style: TextStyle(fontSize: 20,color: Colors.blue),)
            ],
          ),
        ),
      ),

    );
  }
}
