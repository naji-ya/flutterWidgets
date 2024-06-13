import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CarouselExampleUI(),
  ));
}

class CarouselExampleUI extends StatelessWidget {
  var name = ["VEGETABLES", "FRUITS", "EXOTIC CUTS"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 10,
        unselectedItemColor: Colors.green,
        selectedItemColor: Colors.green,
        unselectedLabelStyle: TextStyle(color: Colors.white10),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart_outlined), label: "Cart"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Account"),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              title: Text("FARMERS FRESH ZONE"),
              backgroundColor: Colors.green.shade500,
              actions: [
                Icon(Icons.location_on_outlined),
                SizedBox(
                  width: 8,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 7, vertical: 18),
                  child: Text("Kochi"),
                ),
              ],
              bottom: AppBar(
                backgroundColor: Colors.green.shade500,
                title: Container(
                    height: 40,
                    color: Colors.white,
                    child: TextField(
                      decoration: InputDecoration(
                          icon: Icon(Icons.search),
                          hintText: "search for vegetables and fruits.."),
                    )),
              )),
          SliverList(
              delegate: SliverChildListDelegate([
            SizedBox(
              height: 20,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 25,
                      width: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.blueGrey.shade500,
                          )),
                      child: Center(
                        child: Text(
                          "VEGETABLES",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.blueGrey.shade500,
                          )),
                      child: Center(
                        child: Text(
                          "FRUITS",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                    Container(
                      height: 25,
                      width: 115,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          border: Border.all(
                            color: Colors.blueGrey.shade500,
                          )),
                      child: Center(
                        child: Text(
                          "EXOTIC CUTS",
                          style: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                CarouselSlider(
                  items: const [
                    Image(
                        image: AssetImage("assets/images/nature-book1.jpg"),
                        fit: BoxFit.fill),
                    Image(
                        image: AssetImage("assets/images/nature-book2.jpg"),
                        fit: BoxFit.fill),
                    Image(
                        image: AssetImage("assets/images/nature-book1.jpg"),
                        fit: BoxFit.fill),
                    Image(
                        image: AssetImage("assets/images/nature-book2.jpg"),
                        fit: BoxFit.fill),
                    Image(
                        image: AssetImage("assets/images/nature-book1.jpg"),
                        fit: BoxFit.fill),
                    Image(
                        image: AssetImage("assets/images/nature-book2.jpg"),
                        fit: BoxFit.fill),
                  ],
                  options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 2.0,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 18, right: 18),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(
                      color: Colors.black,
                      width: 1,
                    )),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Icon(Icons.timer_sharp),
                            Icon(Icons.account_box_outlined),
                            Icon(Icons.house),
                          ],
                        ),
                        SizedBox(
                          height: 7,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("30 mins policy"),
                            Text("Traceability"),
                            Text("Local Surrounding"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 190, top: 30),
                  child: Text(
                    "Shop by Category",
                    style: TextStyle(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2.0,
                          blurRadius: 12.0,
                        )
                      ]),
                      height: 90,
                      width: 120,
                      child: Image(
                        image: AssetImage("assets/images/tomato.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2.0,
                          blurRadius: 12.0,
                        )
                      ]),
                      height: 90,
                      width: 120,
                      child: Image(
                        image: AssetImage("assets/images/pineapple.webp"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          color: Colors.black,
                          spreadRadius: 2.0,
                          blurRadius: 12.0,
                        )
                      ]),
                      height: 90,
                      width: 120,
                      child: Image(
                        image: AssetImage("assets/images/tomato.jpg"),
                        fit: BoxFit.cover,
                      ),
                    )
                  ],
                )
              ],
            ),
          ])),
        ],
      ),
    );
  }
}
