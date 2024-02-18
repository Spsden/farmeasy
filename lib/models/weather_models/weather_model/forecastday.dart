import 'package:freezed_annotation/freezed_annotation.dart';

import 'astro.dart';
import 'day.dart';
import 'hour.dart';

part 'forecastday.freezed.dart';
part 'forecastday.g.dart';

@freezed
class Forecastday with _$Forecastday {
	factory Forecastday({
		String? date,
		@JsonKey(name: 'date_epoch') int? dateEpoch,
		Day? day,
		Astro? astro,
		List<Hour>? hour,
	}) = _Forecastday;

	factory Forecastday.fromJson(Map<String, dynamic> json) => _$ForecastdayFromJson(json);
}