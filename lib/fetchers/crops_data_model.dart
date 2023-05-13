// To parse this JSON data, do
//
//     final cropsData = cropsDataFromMap(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

List<CropsData> cropsDataFromMap(String str) => List<CropsData>.from(json.decode(str).map((x) => CropsData.fromMap(x)));

String cropsDataToMap(List<CropsData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class CropsData {
  final Index index;
  final Type type;
  final String id;
  final double score;
  final String name;
  final String? description;
  final String? slug;
  final List<String?> alternateNames;
  final List<String?> scientificNames;
  final int photosCount;
  final int plantingsCount;
  final int harvestsCount;
 // final List<int> plantersIds;
  final bool hasPhotos;
  final String? thumbnailUrl;
  final String? scientificName;
  final int createdAt;
  final String? cropsDatumId;

  CropsData({
    required this.index,
    required this.type,
    required this.id,
    required this.score,
    required this.name,
    required this.description,
    required this.slug,
    required this.alternateNames,
    required this.scientificNames,
    required this.photosCount,
    required this.plantingsCount,
    required this.harvestsCount,
   // required this.plantersIds,
    required this.hasPhotos,
    required this.thumbnailUrl,
    required this.scientificName,
    required this.createdAt,
    required this.cropsDatumId,
  });

  factory CropsData.fromMap(Map<String, dynamic> json) => CropsData(
    index: indexValues.map[json["_index"]]!,
    type: typeValues.map[json["_type"]]!,
    id: json["_id"],
    score: json["_score"]?.toDouble(),
    name: json["name"],
    description: json["description"],
    slug: json["slug"],
    alternateNames: List<String>.from(json["alternate_names"].map((x) => x)),
    scientificNames: List<String>.from(json["scientific_names"].map((x) => x)),
    photosCount: json["photos_count"],
    plantingsCount: json["plantings_count"],
    harvestsCount: json["harvests_count"],
   // plantersIds: List<int>.from(json["planters_ids"].map((x) => x)),
    hasPhotos: json["has_photos"],
    thumbnailUrl: json["thumbnail_url"],
    scientificName: json["scientific_name"],
    createdAt: json["created_at"],
    cropsDatumId: json["id"],
  );

  Map<String, dynamic> toMap() => {
    "_index": indexValues.reverse[index],
    "_type": typeValues.reverse[type],
    "_id": id,
    "_score": score,
    "name": name,
    "description": description,
    "slug": slug,
    "alternate_names": List<dynamic>.from(alternateNames.map((x) => x)),
    "scientific_names": List<dynamic>.from(scientificNames.map((x) => x)),
    "photos_count": photosCount,
    "plantings_count": plantingsCount,
    "harvests_count": harvestsCount,
    //"planters_ids": List<dynamic>.from(plantersIds.map((x) => x)),
    "has_photos": hasPhotos,
    "thumbnail_url": thumbnailUrl,
    "scientific_name": scientificName,
    "created_at": createdAt,
    "id": cropsDatumId,
  };
}

enum Index { CROPS_PRODUCTION_20200824003628370 }

final indexValues = EnumValues({
  "crops_production_20200824003628370": Index.CROPS_PRODUCTION_20200824003628370
});

enum Type { DOC }

final typeValues = EnumValues({
  "_doc": Type.DOC
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
