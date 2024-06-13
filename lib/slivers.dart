import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SiversExample(),
  ));
}

class SiversExample extends StatelessWidget {
  var name=["Asha","Masha","Disha","Usha","Asha","Masha","Disha","Usha","Asha","Masha","Disha","Usha"];
  var phone=["97335433456","93734654355","9383635343","83635367352","97335433456","93734654355","9383635343","83635367352","97335433456","93734654355","9383635343","83635367352"];
  var images=[
    "assets/images/im1.jpg",
    "assets/images/im3.jpg",
    "assets/images/im5.jpg",
    "assets/images/im2.webp",
    "assets/images/im1.jpg",
    "assets/images/im3.jpg",
    "assets/images/im5.jpg",
    "assets/images/im2.webp",
    "assets/images/im1.jpg",
    "assets/images/im3.jpg",
    "assets/images/im5.jpg",
    "assets/images/im2.webp",
    "assets/images/im1.jpg",
    "assets/images/im3.jpg",
    "assets/images/im5.jpg",
    "assets/images/im2.webp"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
expandedHeight: 150,
            
            floating: true,
            pinned: true,
            title: Text("Custom Appbar"),
            actions: [
              Icon(Icons.shopping_cart),
              Icon(Icons.favorite)
            ],

            bottom: AppBar(
              title: Container(
                color: Colors.white,
                child: TextField(
                  decoration: InputDecoration(

                    border: InputBorder.none,
                    hintText: "search here",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.camera_alt_outlined)
                  ),
                ),
              ),
              
            ),
          ),
          
          SliverList(delegate: SliverChildListDelegate(
            List.generate(name.length, (index){
              return Card(

                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(images[index]),
                  ),
                  title: Text(name[index],style: TextStyle(
                    fontSize: 20
                  ),),
                  subtitle: Text(phone[index]),
                ),
              );
            })
          ))
        ],
      ),
    );
  }
}
