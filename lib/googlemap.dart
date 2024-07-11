import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main(){

  runApp(MaterialApp(
    home: MapSample(),
  ));

}

class MapSample extends StatefulWidget {
  const MapSample({super.key});

  @override
  State<MapSample> createState() => _MapSampleState();
}

class _MapSampleState extends State<MapSample> {
  final  Completer<GoogleMapController>_controller =Completer<GoogleMapController>();

  static CameraPosition _kGooglePlex =CameraPosition(target: LatLng(11.286749862214004, 75.80747406188658),
  zoom: 14.4746);

  static const CameraPosition _kLake =CameraPosition(target: LatLng(11.275237325906993, 75.77705961464656),
  bearing: 192.8334901395799,
  tilt: 59.440717697143555,
  zoom: 19.151926040649414);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GoogleMap(mapType: MapType.hybrid,
          initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController Controller){
        _controller.complete(Controller);
      },),

      floatingActionButton: FloatingActionButton.extended(onPressed: _gotoTheLake,
      label: Text("Go to lake!"),
        icon: Icon(Icons.directions_boat,),
      ),
    );
  }

  Future<void>_gotoTheLake() async{
    final GoogleMapController controller =await _controller.future;
    await controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
  }
}
