import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ExpandedtileWidget(),
  ));

}

class ExpandedtileWidget extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            ExpansionTile(title: Text("Colors"),
            children: [
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.purple,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.orange,
                ),
              ),
              ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.yellowAccent,
                ),
              )
            ],),

            ExpansionTile(title: Text("Light colors"),
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.blueGrey,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.green,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.redAccent,
                  ),
                ),
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.brown,
                  ),
                )
              ],),
          ],
        ),
      ),
    );
  }
}
