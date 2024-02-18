import 'package:freezed_annotation/freezed_annotation.dart';

import 'condition.dart';

part 'hour.freezed.dart';
part 'hour.g.dart';

@freezed
class Hour with _$Hour {
	factory Hour({
		@JsonKey(name: 'time_epoch') int? timeEpoch,
		String? time,
		@JsonKey(name: 'temp_c') double? tempC,
		@JsonKey(name: 'temp_f') double? tempF,
		@JsonKey(name: 'is_day') int? isDay,
		Condition? condition,
		@JsonKey(name: 'wind_mph') double? windMph,
		@JsonKey(name: 'wind_kph') double? windKph,
		@JsonKey(name: 'wind_degree') int? windDegree,
		@JsonKey(name: 'wind_dir') String? windDir,
		@JsonKey(name: 'pressure_mb') double? pressureMb,
		@JsonKey(name: 'pressure_in') double? pressureIn,
		@JsonKey(name: 'precip_mm') double? precipMm,
		@JsonKey(name: 'precip_in') double? precipIn,
		@JsonKey(name: 'snow_cm') double? snowCm,
		int? humidity,
		int? cloud,
		@JsonKey(name: 'feelslike_c') double? feelslikeC,
		@JsonKey(name: 'feelslike_f') double? feelslikeF,
		@JsonKey(name: 'windchill_c') double? windchillC,
		@JsonKey(name: 'windchill_f') double? windchillF,
		@JsonKey(name: 'heatindex_c') double? heatindexC,
		@JsonKey(name: 'heatindex_f') double? heatindexF,
		@JsonKey(name: 'dewpoint_c') double? dewpointC,
		@JsonKey(name: 'dewpoint_f') double? dewpointF,
		@JsonKey(name: 'will_it_rain') int? willItRain,
		@JsonKey(name: 'chance_of_rain') int? chanceOfRain,
		@JsonKey(name: 'will_it_snow') int? willItSnow,
		@JsonKey(name: 'chance_of_snow') int? chanceOfSnow,
		@JsonKey(name: 'vis_km') double? visKm,
		@JsonKey(name: 'vis_miles') double? visMiles,
		@JsonKey(name: 'gust_mph') double? gustMph,
		@JsonKey(name: 'gust_kph') double? gustKph,
		double? uv,
		@JsonKey(name: 'short_rad') double? shortRad,
		@JsonKey(name: 'diff_rad') double? diffRad,
	}) = _Hour;

	factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);
}