// To parse this JSON data, do
//
//     final dataOfficeDetails = dataOfficeDetailsFromMap(jsonString);

import 'dart:convert';

DataOfficeDetails dataOfficeDetailsFromMap(String str) =>
    DataOfficeDetails.fromMap(json.decode(str));

String dataOfficeDetailsToMap(DataOfficeDetails data) =>
    json.encode(data.toMap());

class DataOfficeDetails {
  DataOfficeDetails({
    required this.items,
  });

  final List<Item> items;

  factory DataOfficeDetails.fromMap(Map<String, dynamic> json) =>
      DataOfficeDetails(
        items: List<Item>.from(json["items"].map((x) => Item.fromMap(x))),
      );

  Map<String, dynamic> toMap() => {
        "items": List<dynamic>.from(items.map((x) => x.toMap())),
      };
}

class Item {
  Item({
    required this.officerRole,
    required this.name,
  });

  final String officerRole;
  final String name;

  factory Item.fromMap(Map<String, dynamic> json) => Item(
        officerRole: json["officer_role"],
        name: json["name"],
      );

  Map<String, dynamic> toMap() => {
        "officer_role": officerRole,
        "name": name,
      };
}
