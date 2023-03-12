import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'forecastday.dart';

@immutable
class Forecast {
	final List<Forecastday>? forecastday;

	const Forecast({this.forecastday});

	@override
	String toString() => 'Forecast(forecastday: $forecastday)';

	factory Forecast.fromMap(Map<String, dynamic> data) => Forecast(
				forecastday: (data['forecastday'] as List<dynamic>?)
						?.map((e) => Forecastday.fromMap(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toMap() => {
				'forecastday': forecastday?.map((e) => e.toMap()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Forecast].
	factory Forecast.fromJson(String data) {
		return Forecast.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Forecast] to a JSON string.
	String toJson() => json.encode(toMap());
}
