import 'package:flutter/material.dart';
class HotelPageTwo extends StatelessWidget {
final Image image;

HotelPageTwo({ required this.image});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 40),
      child: Column(
        children: [
          Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey)),
              child: Stack(
                children: [
                  Positioned(
                    child: image,
                  ),
                  Positioned(
                    child: Container(
                      color: Colors.white,
                      child: Center(child: Text("RS 40")),
                    ),
                    height: 30,
                    width: 60,
                    top: 150,
                    left: 330,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 220,left: 20),
                    child: Text(
                      "Awesom Room near Boddha",
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 245,left: 190),
                    child: Text(" Boddha,Kathamanadu"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 260),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.green,
                        ),
                        Icon(
                          Icons.star_half_sharp,
                          color: Colors.green,
                        ),
                        Text("(220 reviews)")
                      ],
                    ),
                  ),


                ],
              ),

          ),

        ],
      ),
    );
  }
}
