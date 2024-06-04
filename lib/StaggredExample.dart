import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: StaggeredExample(),
  ));
}

class StaggeredExample extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen.shade100,
      appBar: AppBar(
        title: Text("StaggerdRecycleView", style: TextStyle(
            fontSize: 24
        ),),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: StaggeredGrid.count(crossAxisCount: 2,
          
          children: [
            StaggeredGridTile.count(crossAxisCellCount: 1,
              
              mainAxisCellCount: 1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.all(5),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(top: 6),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top:5,right: 7,left: 7),
                        child: Image(image: AssetImage("assets/images/Havasu.jpg"),
                          fit: BoxFit.fill, height: 130, width: 300),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(right: 80,top: 7),
                        child: Text("Havasu Falls",
                        style: TextStyle(
                          fontSize: 16,

                        ),),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            StaggeredGridTile.count(crossAxisCellCount: 1,
                mainAxisCellCount: 1.70,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6,),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:5,right: 7,left: 7),
                          child: Column(
                            children: [
                              Image(
                                image: AssetImage("assets/images/trondheim.webp"),
                                fit: BoxFit.fill,
                                height: 270, width: 300,),

                              Padding(
                                padding: const EdgeInsets.only(right: 98,top: 5),
                                child: Text("Trondhein",
                                style: TextStyle(
                                  fontSize: 16
                                ),),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
            StaggeredGridTile.count(crossAxisCellCount: 1,
                mainAxisCellCount: 1.67,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 6, right: 6, left: 6,),
                    child: Column(
                      children: [
                        Image(image: AssetImage("assets/images/sunset.jpg"),
                          fit: BoxFit.fill,
                        height: 270,
                        width: 300,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5,right: 110),
                          child: Text("Portugal",
                          style: TextStyle(
                            fontSize: 16
                          ),),
                        ),
                      ],
                    ),
                  ),
                )),
            StaggeredGridTile.count(crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child:Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:5,right: 7,left: 7),
                          child: Image(image: AssetImage("assets/images/The-rock.jpg"),
                              fit: BoxFit.fill, height: 110, width: 300),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(left: 8,top: 7),
                          child: Text("Rocky Mountain National Park",
                            style: TextStyle(
                              fontSize: 15,

                            ),),
                        ),
                      ],
                    ),
                  ),
                ),),
            StaggeredGridTile.count(crossAxisCellCount: 1,
                mainAxisCellCount: 1,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  margin: EdgeInsets.all(5),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 6, right: 6, left: 6, bottom: 30),
                    child: Image(
                      image: AssetImage("assets/images/snowsunset.jpg"),
                      fit: BoxFit.fill,),
                  ),

                )),
            StaggeredGridTile.count(crossAxisCellCount: 1,
              mainAxisCellCount: 1,
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                margin: EdgeInsets.all(5),
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.only(
                      top: 6, right: 6, left: 6, bottom: 20),
                  child: Image(image: AssetImage("assets/images/dry-tree.webp"),
                    fit: BoxFit.fill,),
                ),
              ),
            ),

          ],),
      ),

    );
  }
}
