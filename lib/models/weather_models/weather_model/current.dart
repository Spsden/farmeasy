import 'package:freezed_annotation/freezed_annotation.dart';

import 'condition.dart';

part 'current.freezed.dart';
part 'current.g.dart';

@freezed
class Current with _$Current {
	factory Current({
		@JsonKey(name: 'last_updated_epoch') int? lastUpdatedEpoch,
		@JsonKey(name: 'last_updated') String? lastUpdated,
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
		int? humidity,
		int? cloud,
		@JsonKey(name: 'feelslike_c') double? feelslikeC,
		@JsonKey(name: 'feelslike_f') double? feelslikeF,
		@JsonKey(name: 'vis_km') double? visKm,
		@JsonKey(name: 'vis_miles') double? visMiles,
		double? uv,
		@JsonKey(name: 'gust_mph') double? gustMph,
		@JsonKey(name: 'gust_kph') double? gustKph,
	}) = _Current;

	factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);
}