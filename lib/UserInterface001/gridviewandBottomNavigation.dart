import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GridandBottomNavigation(),
    ),
  );
}

class GridandBottomNavigation extends StatefulWidget {
  const GridandBottomNavigation({super.key});

  @override
  State<GridandBottomNavigation> createState() =>
      _GridandBottomNavigationState();
}

class _GridandBottomNavigationState extends State<GridandBottomNavigation> {
  var images = [
    "assets/images/barsandhotels.png",
    "assetsimages/barsandhotels.png",
    "assetsimages/barsandhotels.png",
    "assetsimages/barsandhotels.png",
    "assetsimages/barsandhotels.png",
    "assetsimages/barsandhotels.png"
  ];
  var name = [
    "Bars & Hotels",
    "Fine Dining",
    "Cafes",
    "Nearby",
    "Fast Food",
    "Featured Food"
  ];
  var place = [
    "42 Place",
    "15 Place",
    "28 Place",
    "34 Place",
    "29 Place",
    "21 Place"
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Discovery",
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: index,
          onTap: (onTapIcon) {
            setState(() {
              index = onTapIcon;
            });
          },
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.orange,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 30,
                ),
                label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.location_pin,
                  size: 30,
                ),
                label: "Discovery"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.bookmark_border,
                  size: 30,
                ),
                label: "Bookmark"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.star_border,
                  size: 30,
                ),
                label: "Bag Foodies"),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.account_circle_outlined,
                  size: 30,
                ),
                label: "Profile")
          ]),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2),
          itemCount: name.length,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              margin: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(images[index]),
                      ),
                    ),
                  ),
                  Text(name[index]),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(place[index]),
                ],
              ),
            );
          }),
    );
  }
}
