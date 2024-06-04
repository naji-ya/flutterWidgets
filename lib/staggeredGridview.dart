
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

// void main(){
//
//   runApp(MaterialApp(
//     home: StaggeredgridView(),
//   )
//   );
// }

class StaggeredgridView extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGrid.count(crossAxisCount: 4,
      children: [
        StaggeredGridTile.count(crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Card(
              color: Colors.purple,
            ),),

        StaggeredGridTile.count(crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Card(
              color: Colors.pink,
            ),),
        StaggeredGridTile.count(crossAxisCellCount: 2,
            mainAxisCellCount: 2,
            child: Card(
              color: Colors.yellow,
            ),),
StaggeredGridTile.count(crossAxisCellCount: 2,
    mainAxisCellCount: 1,
    child: Card(color: Colors.blue,)),

        StaggeredGridTile.count(crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Card(
              color: Colors.green,
            )),
        StaggeredGridTile.count(crossAxisCellCount: 1, mainAxisCellCount: 1,
            child: Card(
              color: Colors.deepPurple,
            )),
        StaggeredGridTile.count(crossAxisCellCount: 3,
            mainAxisCellCount: 1,
            child: Card(
              color: Colors.grey,
            )),
        StaggeredGridTile.count(crossAxisCellCount: 2,
            mainAxisCellCount:2 ,
            child: Card(
              color: Colors.blueGrey,
            )),
        StaggeredGridTile.count(crossAxisCellCount: 1,
            mainAxisCellCount: 3,
            child: Card(
              color: Colors.brown,
            )),
        StaggeredGridTile.count(crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Card(
              color: Colors.amber,
            )),
        StaggeredGridTile.count(crossAxisCellCount: 1,
            mainAxisCellCount: 1,
            child: Card(
              color: Colors.lightGreen,
            ))
      ],),


    );
  }
}
