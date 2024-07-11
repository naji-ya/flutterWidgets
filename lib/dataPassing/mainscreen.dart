

import 'package:flutter/material.dart';
import 'package:untitled1/dataPassing/dummydata.dart';
import 'package:untitled1/dataPassing/productdetails.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {
      'productdetailspage':(context)=>ProductDetails(),
    },
    home: MianPage(),
  ));
}

class MianPage extends StatefulWidget {
  const MianPage({super.key});

  @override
  State<MianPage> createState() => _MianPageState();
}

class _MianPageState extends State<MianPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: 
          dummyProducts.map((product) => GestureDetector(
            child: Center(
              child: Column(
                children: [

                  Image(image: AssetImage("${product['image']}")),
                  Text("${product['name']}"),
                ],
              ),
            ),
            onTap: ()=>getproduct(context,product['id']),
          )).toList()
        
      ),
    );
  }

  getproduct(BuildContext context, product) {
    
    Navigator.pushNamed(context, 'productdetailspage',arguments: product);
  }
}
