import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main()
{
  runApp(MaterialApp(
    home: dismissableWidget(),
  ));
}

class dismissableWidget extends StatelessWidget {

  var data=["data1","data2","data3"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title: Text("Dismmissable Widget"),
      ),
      body: ListView.builder(itemBuilder: (context,index){
        return Dismissible(key: ValueKey(data),
            background: Container(
              color: Colors.green,
            ),
            secondaryBackground: Container(
              color: Colors.red,
            ),
              child: Center(
          child: Text(data[index],
          style: GoogleFonts.dmSerifDisplay(fontSize: 39),),


            ));
      },itemCount: data.length,),
    );
  }
}
