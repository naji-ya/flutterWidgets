import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ListviewWork(),
  ));
}

class ListviewWork extends StatelessWidget {
  var cityName = ["Delhi", "Finland", "London", "Vancouver", "New York"];
  var countryName = ["India", "Europe", "UK", "Canada", "America"];
  var population = [
    "Population:32.9 mill",
    "Population:5.54 mill",
    "Population:8.8 mill",
    "Population:2.6 mill",
    "Population:10.5 mill"
  ];
  var images = [
    "assets/images/indiagate.jpg",
    "assets/images/finland.jpeg",
    "assets/images/uk.jpg",
    "assets/images/vancouver.jpg",
    "assets/images/Statue.webp",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange.shade900,
        title: const Text(
          "Cities Around World",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: images.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                Card(
                  elevation: 8,
                  color: Colors.orange,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: ListTile(
                      title: Row(children: [
                        SizedBox(
                          height: 150,
                          width: 130,
                          child: Image(
                            image: AssetImage(images[index]),
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              cityName[index],
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              countryName[index],
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text(
                              population[index],
                            ),
                          ],
                        )
                      ]),
                    ),
                  ),
                )
              ],
            );
          }),
    );
  }
}
