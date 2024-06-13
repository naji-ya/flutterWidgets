import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: BottomSheetExample(),
  ));
}

class BottomSheetExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom sheet"),
        actions: [
PopupMenuButton(itemBuilder: (context){
  return [
    PopupMenuItem(child: Text("Invite")),
    PopupMenuItem(child: Text("New Group")),
    PopupMenuItem(child: Text("New BroadCast")),
    PopupMenuItem(child: Text("LogOut"))
  ];
    
  
})
        ],
      ),

      body: Container(

        child: Center(
          child: GestureDetector(
            onTap: ()=>showBottom(context),
            child: Text("Bottom sheet",
            ),
          ),
        ),
      ),
    );
  }

  showBottom(BuildContext context) {

    showModalBottomSheet(context: context, builder: (context){
      return ListView(
        children: [
          ListTile(
            leading: Icon(Icons.share),
            title: Text("Share"),
          ),

          ListTile(
            leading: Icon(Icons.facebook),
            title: Text("facebook"),
          ),

          ListTile(
            leading: Icon(Icons.settings),
            title: Text("Settings"),
          ),

          ListTile(
            leading:FaIcon(Icons.whatsapp),
           title: Text("WhatsApp"),
          )
        ],
      );
    });
  }
}
