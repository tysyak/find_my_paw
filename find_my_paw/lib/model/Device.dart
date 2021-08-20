import 'dart:convert';

class Device {
  int id = 0;
  String phone_number = "";
  String name = "";

  Device({required this.id, required this.phone_number, required this.name});

  Map<String, dynamic> toMap() {
    return {'id': id, 'phone_number': phone_number, 'name': name};
  }

  factory Device.fromMap(Map<String, dynamic> map) {
    return Device(
        id: map['id'], phone_number: map['phone_number'], name: map['name']);
  }

  String toJson() => jsonEncode(toMap());

  factory Device.fromJson(String source) => Device.fromMap(jsonDecode(source));

  @override
  String toString() =>
      'Device(id: $id, phone_number: $phone_number, name: $name)';
}
