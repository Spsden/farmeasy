
import 'dart:convert';

List<CropData> cropDataFromJson(String str) => List<CropData>.from(json.decode(str).map((x) => CropData.fromJson(x)));

String cropDataToJson(List<CropData> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class CropData {
    CropData({
        required this.id,
        required this.crop,
        required this.variety,
        required this.seasonDurationInDays,
        required this.recommendedZone,
        required this.field5,
    });

    String id;
    String crop;
    String variety;
    String seasonDurationInDays;
    String recommendedZone;
    String field5;

    factory CropData.fromJson(Map<String, dynamic> json) => CropData(
        id: json["id"],
        crop: json["Crop"],
        variety: json["Variety"],
        seasonDurationInDays: json["Season_duration_in_days"],
        recommendedZone: json["Recommended_Zone"],
        field5: json["field5"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "Crop": crop,
        "Variety": variety,
        "Season_duration_in_days": seasonDurationInDays,
        "Recommended_Zone": recommendedZone,
        "field5": field5,
    };
}
