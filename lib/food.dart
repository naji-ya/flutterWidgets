import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: FoodHomePage(),
  ));
}

class FoodHomePage extends StatelessWidget {
  const FoodHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.white,
          iconSize: 30,
          selectedItemColor: Colors.orangeAccent,
          type: BottomNavigationBarType.fixed,
          elevation: 40,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(
                icon: Icon(Icons.badge_outlined), label: "My bag"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          ]),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.grey.shade100,
        child: Column(
          children: [
            Stack(
              children: [
                Positioned(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: Container(
                      height: 50,
                      width: 50,
                      child: Image(
                        image: AssetImage("assets/images/profprofile.webp"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  top: 75,
                  right: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80, right: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Find Your Best ",
                        style: GoogleFonts.andadaPro(
                            color: Colors.grey.shade700, fontSize: 15),
                      ),
                      Text(
                        "Nutrition Meal ",
                        style: GoogleFonts.dmSerifDisplay(
                            color: Colors.black,
                            fontSize: 23,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 28,
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              top: 3, bottom: 3, left: 10),
                          child: TextField(
                            decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Search Foods",
                                suffixIcon: Icon(
                                  Icons.search,
                                )),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          FoodMenuContainer(
                            ContainerColor: Color.fromARGB(255, 245, 203, 218),
                            images: Image(
                              image: AssetImage("assets/images/bakery.png"),
                            ),
                          ),
                          FoodMenuContainer(
                            ContainerColor: Color.fromRGBO(210, 232, 245, 1),
                            images: Image(
                              image: AssetImage("assets/images/dairy.png"),
                            ),
                          ),
                          FoodMenuContainer(
                            ContainerColor: Color.fromARGB(255, 244, 202, 173),
                            images: Image(
                              image: AssetImage(
                                  "assets/images/fried-fish_6469203.png"),
                            ),
                          ),
                          FoodMenuContainer(
                            ContainerColor: Color.fromARGB(255, 245, 178, 178),
                            images: Image(
                              image: AssetImage("assets/images/snacks.png"),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 15, left: 4.0, right: 4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "BAKERY",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Text(
                              "DAIRY",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            SizedBox(
                              width: 28,
                            ),
                            Text(
                              "SEAFOOD",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "SNACKS",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 13),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                CarouselSlider(
                    items: [
                      CarouselCondainer(
                          carouselImage:
                              Image(image: AssetImage("assets/images/bf.png")),
                          stackTitle: Text(
                            "Morning Breakfast",
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          stackPrice: Text(
                            "\$200",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                          cntclr: Color.fromRGBO(119, 202, 159, 1)),
                      CarouselCondainer(
                          carouselImage: Image(
                              image: AssetImage("assets/images/Meal.png")),
                          stackTitle: Text(
                            "Lunch Food",
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          stackPrice: Text(
                            "\$150",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                          cntclr: Colors.brown.shade200),
                      CarouselCondainer(
                          carouselImage: Image(
                              image: AssetImage("assets/images/dinner.png")),
                          stackTitle: Text(
                            "Dinner Food",
                            style: TextStyle(
                                fontSize: 19,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                          stackPrice: Text(
                            "\$250",
                            style: TextStyle(
                                fontSize: 13,
                                color: Colors.orange,
                                fontWeight: FontWeight.bold),
                          ),
                          cntclr: Colors.blue.shade100),
                    ],
                    options: CarouselOptions(
                      aspectRatio: 2.6,
                      autoPlay: true,
                      height: 300,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class FoodMenuContainer  extends StatelessWidget {
  final Color ContainerColor ;
  final Image images;
  const FoodMenuContainer({super.key,
    required this.ContainerColor,
    required this.images});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      width:80,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(7),
        color: ContainerColor,
      ),
      child:
      Padding(padding: EdgeInsets.all(23),
        child: images,),
    );
  }
}


class CarouselCondainer extends StatelessWidget {
  final Image carouselImage;
  final Text stackTitle;
  final Text stackPrice;

  final Color cntclr;

  const CarouselCondainer(
      {super.key,
        required this.carouselImage,
        required this.stackTitle,
        required this.stackPrice,
        required this.cntclr});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Container(
              height: 350,
              width: 300,
              decoration: BoxDecoration(
                color: cntclr,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Padding(
                padding:
                EdgeInsets.only(bottom: 100, left: 20, right: 20, top: 10),
                child: carouselImage,
              ),
            ),
          ),
          Positioned(
            top: 180,
            left: 25,
            child: Container(
              height: 135,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 10, left: 6, right: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    stackTitle,
                    SizedBox(height: 7,),
                    stackPrice,
                    SizedBox(height: 4,),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                          size: 18,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.orangeAccent,
                          size: 18,
                        ),
                        Icon(
                          Icons.star_half_sharp,
                          color: Colors.orangeAccent,
                          size: 18,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 18,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Tea",
                              style: TextStyle(
                                color: Colors.pink.shade300,
                                fontSize: 7,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 50,
                          decoration: BoxDecoration(
                            color: Colors.orangeAccent.shade100,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Fresh Lime",
                              style: TextStyle(
                                color: Colors.orangeAccent.shade200,
                                fontSize: 7,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 20,
                          width: 40,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Center(
                            child: Text(
                              "Juice",
                              style: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 7,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

