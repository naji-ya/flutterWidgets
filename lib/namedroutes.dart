

import 'package:flutter/material.dart';

import 'GridviewCount.dart';
import 'listviewbuilder.chats.dart';

void main() {
  runApp(MaterialApp(
    routes: {
      'grid': (context) => GridviewCount(),
      'list': (context) => ListviewChats(),
    },
    home: NamedRoutesExample(),
  ));
}

class NamedRoutesExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Wrap(
            children: [
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'grid');
                  },
                  child: Text("Grid")),

              SizedBox(width: 10,),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'list');
                  },
                  child: Text("List")),
            ],
          ),
        ),
      ),
    );
  }
}
