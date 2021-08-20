import 'dart:convert';
import 'package:find_my_paw/model/Device.dart';

import 'package:http/http.dart' as http;

Future<List<Device>> getDevices() async {
  List<Device> devices = [];

  const urlString = 'http://192.168.0.107:3001';
  const action = '/api/devices';

  final response = await http.get(
    Uri.http(urlString, action)
  );

  if (response.statusCode != 200) {
    return devices;
  }
  var jsonText = response.body;

  var listJsonItems = jsonDecode(jsonText) as List;

  List<Device> devicesList = listJsonItems.map((e) => Device.fromMap(e)).toList();

  return devicesList;
}
