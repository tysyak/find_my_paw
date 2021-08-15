import 'dart:async';
import 'package:find_my_paw/nav_bar.dart';
import 'package:find_my_paw/assets/color.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class PagesFindMap extends StatelessWidget {
  const PagesFindMap({Key? key}) : super(key: key);

  // @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Find Map')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Blank...',
            ),
          ],
        ),
      ),
    );
  }
}
