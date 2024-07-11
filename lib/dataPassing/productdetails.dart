import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled1/dataPassing/dummydata.dart';
class ProductDetails extends StatefulWidget {
  const ProductDetails({super.key});

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {

  double value = 3.5;
  @override
  Widget build(BuildContext context) {
    final id=ModalRoute.of(context)?.settings.arguments;
    final product=dummyProducts.firstWhere((productsused) => productsused["id"]==id);
    return  Scaffold(
      body: ListView(
        children: [
          SizedBox(
              height: 300,
              width: 300,
              child: Image(image: AssetImage(product["image"]),
              ),
          ),
          Text(product["Rating"],style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.green),),

          Wrap(
            children: [
              Text(product["name"],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
SizedBox(
  width: 25,
),
              Text(product["price"],style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),

            ],
          ),
          Text(product["description"],
          style: GoogleFonts.armata(
            fontSize: 20
          ),),
        ],
      ),
      
    );
  }
}
