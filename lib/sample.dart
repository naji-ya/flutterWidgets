import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SampleUI(),
  ));
}

class SampleUI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [Colors.blue,Colors.purple,Colors.pink],
        begin: Alignment.topRight,
          end: Alignment.bottomCenter,
        ),
      ),
       // color: Colors.yellow.shade200,
        child: const Center(
          child: Text(
            "Facebook",
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
      ),
    );
  }
}
