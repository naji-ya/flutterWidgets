import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(home: GridviewBuilder(),
  ));
}
class  GridviewBuilder extends StatelessWidget {

  var icons=[Icons.alarm,Icons.settings,Icons.call,Icons.messenger,Icons.camera];
 var label=["Alarm","Settings","Call","Message","Camera"];
 var color=[Colors.grey,Colors.orange,Colors.red,Colors.purpleAccent,Colors.pink,
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemCount: label.length,
          itemBuilder: (context,index){
        return
            Card(
              color: color[index],
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Icon(icons[index]),
                  Text(label[index]),
                ],
              ),
            );
          }),
    );
  }
}
