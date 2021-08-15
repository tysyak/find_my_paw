import 'package:flutter/material.dart';

class PagesFindMap extends StatefulWidget {
  PagesFindMap({Key? key}) : super(key: key);

  @override
  _PagesFindMapState createState() => _PagesFindMapState();
}

class _PagesFindMapState extends State<PagesFindMap> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Find Map')
      ),
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
