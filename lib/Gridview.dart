import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: GridViewIthFixed(),
  ));
}

class GridViewIthFixed extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        children: [
          Card(
            color: Colors.blue,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.call),
                Text("Call"),
              ],
            ),
          ),
          Card(
            color: Colors.pink,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.person),
                Text("Contact"),
              ],
            ),
          ),

          Card(
            color: Colors.orange,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.messenger_rounded),
                Text("Message"),
              ],
            ),
          ),

          Card(
            color: Colors.red,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.settings),
                Text("Settings"),
              ],
            ),
          ),
          Card(
            color: Colors.green,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.photo_album),
                Text("Gallery"),
              ],
            ),
          ),
          Card(
            color: Colors.greenAccent,
            child: Column(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.camera),
                Text("Camera"),
              ],
            ),
          ),

        ],),
      ),
    );
  }
}
