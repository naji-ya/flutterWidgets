import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CustomListviewChildren(),
  ));
}

class CustomListviewChildren  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
      ),
      body: ListView.custom(childrenDelegate: SliverChildListDelegate([
        Card(
          color: Colors.yellow,
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text("Alan"),
            
          ),
        ),
        Card(
          color: Colors.yellow.shade400,
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text("Amaan"),
          ),
        ),
        Card(
          color: Colors.yellow.shade300,
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text("Ahaan"),
          ),
        ),
        Card(
          color: Colors.yellow.shade200,
          child: ListTile(
            leading: Icon(Icons.person),
            title: Text("Avaan"),
          ),
        ),

      ])),

    );
  }
}