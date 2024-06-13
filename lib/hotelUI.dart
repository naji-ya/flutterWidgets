import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hotelpage.dart';
import 'hotelpage2.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HotelUI(),
  ));
}

class HotelUI extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 140,
            title: Padding(
              padding: const EdgeInsets.only(top: 30, left: 40),
              child: Text(
                "Type your Location",
                style: TextStyle(color: Colors.green, fontSize: 22),
              ),
            ),
            backgroundColor: Colors.lightBlueAccent.shade100,
            leading: Icon(
              Icons.menu,
              color: Colors.black,
            ),
            actions: [
              Icon(
                Icons.favorite_border,
                color: Colors.black,
              ),
            ],
            bottom: AppBar(
              backgroundColor: Colors.lightBlueAccent.shade100,
              title: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextField(
                        decoration: InputDecoration(
                            icon: Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Icon(Icons.search),
                            ),
                            hintText: "Search for Something",
                            suffixIcon: Icon(Icons.camera_alt_rounded)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 40,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            color: Colors.red,
                            height: 90,
                            width: 90,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(Icons.hotel),
                                Text("Hotel"),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.blue,
                            height: 90,
                            width: 90,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(Icons.restaurant),
                                Text("Restaurant"),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.orange,
                            height: 90,
                            width: 90,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Icon(Icons.coffee),
                                Text("Cafe"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        HotelPageTwo(),


                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
