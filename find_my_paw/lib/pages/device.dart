import 'package:find_my_paw/nav_bar.dart';
import 'package:find_my_paw/tools/netJson.dart';
import 'package:find_my_paw/model/Device.dart';
import 'package:find_my_paw/pages/device_detail.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PagesDevice extends StatefulWidget {
  PagesDevice({Key? key}) : super(key: key);

  @override
  _PagesDeviceState createState() => _PagesDeviceState();
}

class _PagesDeviceState extends State<PagesDevice> {
  @override
  var title = 'Dispositivos Registrados';
  var saved = false;

  void initiState() {
    super.initState();
  }

  List<Widget> PageDeviceWidget(List<Device> lista) {
    List<Widget> listDevices = [];
    lista.forEach((element) {
        listDevices.add(GestureDetector(
            onTap: () {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PageDeviceDetail(element)),
            );
            },
            child: Card(
          child: ListTile(
        leading: Image.network(element.avatar, fit: BoxFit.cover),
        title: Text(element.id.toString() + '.-' + element.name),
        subtitle: Text(element.phone_number),
      ))));
    });
    return listDevices;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(title)),
        drawer: NavBar(),
        body: FutureBuilder<List<Device>>(
          future: getDevices(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView(children: PageDeviceWidget(snapshot.data!));
            } else {
              print("No hay informacion");
              return Center(child: CircularProgressIndicator());
            }
          },
        ));
  }
}
