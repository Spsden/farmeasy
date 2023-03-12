import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:farmeasy/fetchers/DataModels/fore_cast/forecastday.dart';
import 'package:flutter/material.dart';

import 'current.dart';
import 'forecast.dart';
import 'location.dart';

@immutable
class ForeCast {
	final Location? location;
	final Current? current;
	final List<Forecastday>? forecast;

	const ForeCast({this.location, this.current, this.forecast});

	// @override
	// String toString() {
	// 	return 'ForeCast(location: $location, current: $current, forecast: $forecast)';
	// }

	// factory ForeCast.fromMap(Map<String, dynamic> data) => ForeCast(
	// 			location: data['location'] == null
	// 					? null
	// 					: Location.fromMap(data['location'] as Map<String, dynamic>),
	// 			current: data['current'] == null
	// 					? null
	// 					: Current.fromMap(data['current'] as Map<String, dynamic>),
	// 			forecast: data['forecast'] == null
	// 					? null
	// 					: Forecast.fromMap(data['forecast'] as Map<String, dynamic>),
	// 		);
	//
	// Map<String, dynamic> toMap() => {
	// 			'location': location?.toMap(),
	// 			'current': current?.toMap(),
	// 			'forecast': forecast?.toMap(),
	// 		};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [ForeCast].
	// factory ForeCast.fromJson(String data) {
	// 	return ForeCast.fromMap(json.decode(data) as Map<String, dynamic>);
	// }
  // /// `dart:convert`
  // ///
  // /// Converts [ForeCast] to a JSON string.
	// String toJson() => json.encode(toMap());
}
