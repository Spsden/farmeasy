// To parse this JSON data, do
//
//     final schemesModel = schemesModelFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

SchemesModel schemesModelFromJson(String str) => SchemesModel.fromJson(json.decode(str));

String schemesModelToJson(SchemesModel data) => json.encode(data.toJson());

class SchemesModel {
  final int totalElements;
  final int totalPages;
  final List<Item> items;

  SchemesModel({
    required this.totalElements,
    required this.totalPages,
    required this.items,
  });

  factory SchemesModel.fromJson(Map<String, dynamic> json) => SchemesModel(
    totalElements: json["totalElements"],
    totalPages: json["totalPages"],
    items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "totalElements": totalElements,
    "totalPages": totalPages,
    "items": List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class Item {
  final int id;
  final String title;
  final String summery;
  final String lgn;
  final String contextPath;

  Item({
    required this.id,
    required this.title,
    required this.summery,
    required this.lgn,
    required this.contextPath,
  });

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    id: json["id"],
    title: json["title"],
    summery: json["summery"],
    lgn: json["lgn"],
    contextPath: json["contextPath"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "title": title,
    "summery": summery,
    "lgn": lgn,
    "contextPath": contextPath,
  };
}
