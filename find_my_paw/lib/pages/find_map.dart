import 'package:flutter/material.dart';

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
