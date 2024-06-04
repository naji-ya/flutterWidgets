
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(DevicePreview(builder: (context)=>MaterialApp(
    debugShowCheckedModeBanner: false,
    useInheritedMediaQuery: true,
    home: GridviewCustomwithextend(),
  )));


}
class GridviewCustomwithextend extends StatelessWidget {
  var name=["anu","Ana","Aiswarya","Asin"];
  var icon=[FaIcon(FontAwesomeIcons.facebook),Icons.call,Icons.mobile_friendly,Icons.message_outlined];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300),
          childrenDelegate: SliverChildListDelegate(
            List.generate(name.length, (index) {
              return Card(
                color: Colors.red,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(name[index],
                    style:
                      GoogleFonts.dmSerifDisplay(
                        textStyle:
                          Theme.of(context).textTheme.displayLarge,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black
                      ),),
                    Icon(FontAwesomeIcons.facebook,
                    size: 50,),
                  ],
                ),
              );
            })
          )),
    );
  }
}
