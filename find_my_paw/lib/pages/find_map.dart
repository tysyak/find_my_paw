import 'dart:async';
import 'dart:typed_data';
import 'package:find_my_paw/nav_bar.dart';
import 'package:find_my_paw/assets/color.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class PagesFindMap extends StatefulWidget {
  @override
  State<PagesFindMap> createState() => PagesFindMapState();
}

class PagesFindMapState extends State<PagesFindMap> {
  @override
  Widget build(BuildContext context) {
    // Initial location of the Map view
    CameraPosition _initialLocation = CameraPosition(target: LatLng(0.0, 0.0));

    // For controlling the view of the Map
    late GoogleMapController mapController;
    return MaterialApp(
        home: Scaffold(
      drawer: NavBar(),
      appBar: AppBar(
        title: Text('Maps Sample App'),
        backgroundColor: AssetsColor.getLayout(),
      ),
      body: Stack(
        children: <Widget>[
          GoogleMap(
            initialCameraPosition: _initialLocation,
            myLocationEnabled: true,
            myLocationButtonEnabled: false,
            mapType: MapType.normal,
            zoomGesturesEnabled: true,
            zoomControlsEnabled: false,
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
            },
          ),
        ],
      ),
    ));
  }
}
