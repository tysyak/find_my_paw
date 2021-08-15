import 'dart:async';
import 'package:find_my_paw/nav_bar.dart';
import 'package:find_my_paw/assets/color.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class PagesFindMap extends StatefulWidget {
  @override
  State<PagesFindMap> createState() => PagesFindMapState();
}

class PagesFindMapState extends State<PagesFindMap> {
  Completer<GoogleMapController> _controller = Completer();

  late GoogleMapController mapController;

  final LatLng _center = const LatLng(19.3313833,-99.1868951);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: NavBar(),
        appBar: AppBar(
          title: Text('Maps Sample App'),
          backgroundColor: AssetsColor.getLayout(),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }

}
