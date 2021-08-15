import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(children: [
      UserAccountsDrawerHeader(
        accountName: Text('Marisa Example'),
        accountEmail: Text('example@gmail.com'),
        currentAccountPicture: CircleAvatar(
          child: ClipOval(
            child: Image.network(
              'https://pbs.twimg.com/profile_images/1410683170618478593/TTdgxDZF_400x400.jpg',
              fit: BoxFit.cover,
              width: 90,
              height: 90,
            ),
          ),
        ),
        decoration: BoxDecoration(
          color: Colors.blue,
          image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                  'https://kohanna.s3.amazonaws.com/cdn/illustrations/60ff5d2c7f5196001e3f8b7e/460fcd9f9fZHB6nIkZ6pUngqTl1Iu6f1/712ea7f4-f20a-41fe-bc21-4c37fbfa7a91.jpeg-1280')),
        ),
      )
    ]));
  }
}
