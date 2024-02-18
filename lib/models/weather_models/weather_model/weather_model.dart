import 'package:freezed_annotation/freezed_annotation.dart';

import 'current.dart';
import 'forecast.dart';
import 'location.dart';

part 'weather_model.freezed.dart';
part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
	factory WeatherModel({
		Location? location,
		Current? current,
		Forecast? forecast,
	}) = _WeatherModel;

	factory WeatherModel.fromJson(Map<String, dynamic> json) => _$WeatherModelFromJson(json);
}