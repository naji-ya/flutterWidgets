import 'package:flutter/material.dart';


class Hotelpagee extends StatelessWidget {
  const Hotelpagee({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Padding(
        padding: const EdgeInsets.only(),
        child: Container(
          height: 500,
          width: 500,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey)),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 200),
                child: Positioned(
                  child: Container(
                    height: 170,
                    width: 500,
                    child: Image(
                      image: AssetImage(
                          "assets/images/hotelroom2.jpg"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Positioned(
                child: Container(
                  color: Colors.white,
                  child: Center(child: Text("RS 40")),
                ),
                height: 30,
                width: 60,
                top: 320,
                left: 330,
              ),
              Positioned(
                child: Text(
                  "Awesom Room near Boddha",
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                top: 400,
                left: 30,
              ),
              Positioned(
                child: Text(" Boddha,Kathamanadu"),
                top: 425,
                left: 200,
              ),
              Positioned(
                child: Icon(
                  Icons.star,
                  color: Colors.green,
                ),
                top: 440,
              ),
              Positioned(
                child: Icon(
                  Icons.star,
                  color: Colors.green,
                ),
                top: 440,
                left: 25,
              ),
              Positioned(
                child: Icon(
                  Icons.star,
                  color: Colors.green,
                ),
                top: 440,
                left: 45,
              ),
              Positioned(
                child: Icon(
                  Icons.star_half_sharp,
                  color: Colors.green,
                ),
                top: 440,
                left: 70,
              ),
              Positioned(
                child: Text("(220 reviews)"),
                top: 445,
                left: 95,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

