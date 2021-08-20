import 'package:find_my_paw/model/Device.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageDeviceDetail extends StatelessWidget {
  final Device device;

  PageDeviceDetail(this.device);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(device.name)),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 150,
              width: double.infinity,
              child: Container(
                child: Image.network(
                  device.avatar,
                  fit: BoxFit.contain,
                  height: 150.0,
                  width: 150.0,
                )
              )
            ),
            TextFormField(
              decoration: InputDecoration(
                hintText: device.phone_number,
              ),
              validator: (String? value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);  //
                },
                child: const Text('Actualizar Número'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
