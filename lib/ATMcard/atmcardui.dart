import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ATMCARD(),
  ));
}

class ATMCARD extends StatelessWidget {
  const ATMCARD({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: Center(
        child: Container(
          height: 240,
          width: 360,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(colors: [Colors.black,Colors.red.shade900],
              ),

          ),
          child: Stack(
            children: [

              Positioned(
                child: Image(image: AssetImage("assets/images/CSB_Bank_Logo.png"),height: 40,fit: BoxFit.fill,color: Colors.white,),
                top: 20,
                left: 200,
              ),
              
              Positioned(
                child: Image(image: AssetImage("assets/images/atm-chip.png"),height: 32,
                width: 39,
                fit: BoxFit.cover,),
                top: 70,
                left:45,
              ),
              
     Positioned(
       child: Text("6522 3200 2345 9876", style: TextStyle(

           color: Colors.white,
           letterSpacing:1.7,
           fontSize: 27,
           fontWeight: FontWeight.bold),),
       top: 110,
       left: 30,
     ),

              Positioned(
                child: Text("Valid ",style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16,
                ),),   top: 150,
                left: 90,
              ),
                    Positioned(
                      child: Text( "Thru", style: TextStyle(
                      color: Colors.white54,
                      fontSize: 16,
                      ),),
                      top: 165,
                      left: 91,
                    ),

              Positioned(
                child: Text("08/23", style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,

                    fontWeight: FontWeight.w700),),
                top: 150,
                left: 140,
              ),
              Positioned(
                child: Text("VINAYAK HEDGE",
                   style: GoogleFonts.adamina(color: Colors.white,
                   letterSpacing: 0.8,fontWeight: FontWeight.w400)),
                top: 190,
                left: 30,
              ),
              
              Positioned(child: Image(image: AssetImage("assets/images/Rupay11.webp"),
                height:60,),
              top: 175,
              left: 220,),

              Positioned(
                child: Image(image: AssetImage("assets/images/rupayUPI.png"),height: 28,

                  fit: BoxFit.contain,),
                top: 70,
                left:270,
              ),
              Positioned(
                child: Image(image: AssetImage("assets/images/wifiIcon.png"),height: 28,
                  color: Colors.white,

                  fit: BoxFit.contain,),
                top: 70,
                left:290,
              ),

              Positioned(
                child: Text("PLATINUM",
                    style:TextStyle(color: Colors.white,
                        fontSize: 10,

                        )),
                top: 215,
                left: 250,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
