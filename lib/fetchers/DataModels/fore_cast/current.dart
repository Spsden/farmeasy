import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'condition.dart';

@immutable
class Current {
	final dynamic lastUpdatedEpoch;
	final String? lastUpdated;
	final dynamic tempC;
	final dynamic tempF;
	final dynamic isDay;
	final Condition? condition;
	final dynamic windMph;
	final dynamic windKph;
	final dynamic windDegree;
	final String? windDir;
	final dynamic pressureMb;
	final dynamic pressureIn;
	final dynamic precipMm;
	final dynamic precipIn;
	final dynamic humidity;
	final dynamic cloud;
	final dynamic feelslikeC;
	final dynamic feelslikeF;
	final dynamic visKm;
	final dynamic visMiles;
	final dynamic uv;
	final dynamic gustMph;
	final dynamic gustKph;

	const Current({
		this.lastUpdatedEpoch, 
		this.lastUpdated, 
		this.tempC, 
		this.tempF, 
		this.isDay, 
		this.condition, 
		this.windMph, 
		this.windKph, 
		this.windDegree, 
		this.windDir, 
		this.pressureMb, 
		this.pressureIn, 
		this.precipMm, 
		this.precipIn, 
		this.humidity, 
		this.cloud, 
		this.feelslikeC, 
		this.feelslikeF, 
		this.visKm, 
		this.visMiles, 
		this.uv, 
		this.gustMph, 
		this.gustKph, 
	});

	@override
	String toString() {
		return 'Current(lastUpdatedEpoch: $lastUpdatedEpoch, lastUpdated: $lastUpdated, tempC: $tempC, tempF: $tempF, isDay: $isDay, condition: $condition, windMph: $windMph, windKph: $windKph, windDegree: $windDegree, windDir: $windDir, pressureMb: $pressureMb, pressureIn: $pressureIn, precipMm: $precipMm, precipIn: $precipIn, humidity: $humidity, cloud: $cloud, feelslikeC: $feelslikeC, feelslikeF: $feelslikeF, visKm: $visKm, visMiles: $visMiles, uv: $uv, gustMph: $gustMph, gustKph: $gustKph)';
	}

	factory Current.fromMap(Map<String, dynamic> data) => Current(
				lastUpdatedEpoch: data['last_updated_epoch'] as dynamic,
				lastUpdated: data['last_updated'] as String?,
				tempC: (data['temp_c'] as num?)?.toDouble(),
				tempF: (data['temp_f'] as num?)?.toDouble(),
				isDay: data['is_day'] as dynamic,
				condition: data['condition'] == null
						? null
						: Condition.fromMap(data['condition'] as Map<String, dynamic>),
				windMph: (data['wind_mph'] as num?)?.toDouble(),
				windKph: data['wind_kph'] as dynamic,
				windDegree: data['wind_degree'] as dynamic,
				windDir: data['wind_dir'] as String?,
				pressureMb: data['pressure_mb'] as dynamic,
				pressureIn: (data['pressure_in'] as num?)?.toDouble(),
				precipMm: data['precip_mm'] as dynamic,
				precipIn: data['precip_in'] as dynamic,
				humidity: data['humidity'] as dynamic,
				cloud: data['cloud'] as dynamic,
				feelslikeC: (data['feelslike_c'] as num?)?.toDouble(),
				feelslikeF: data['feelslike_f'] as dynamic,
				visKm: data['vis_km'] as dynamic,
				visMiles: data['vis_miles'] as dynamic,
				uv: data['uv'] as dynamic,
				gustMph: (data['gust_mph'] as num?)?.toDouble(),
				gustKph: (data['gust_kph'] as num?)?.toDouble(),
			);

	Map<String, dynamic> toMap() => {
				'last_updated_epoch': lastUpdatedEpoch,
				'last_updated': lastUpdated,
				'temp_c': tempC,
				'temp_f': tempF,
				'is_day': isDay,
				'condition': condition?.toMap(),
				'wind_mph': windMph,
				'wind_kph': windKph,
				'wind_degree': windDegree,
				'wind_dir': windDir,
				'pressure_mb': pressureMb,
				'pressure_in': pressureIn,
				'precip_mm': precipMm,
				'precip_in': precipIn,
				'humidity': humidity,
				'cloud': cloud,
				'feelslike_c': feelslikeC,
				'feelslike_f': feelslikeF,
				'vis_km': visKm,
				'vis_miles': visMiles,
				'uv': uv,
				'gust_mph': gustMph,
				'gust_kph': gustKph,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Current].
	factory Current.fromJson(String data) {
		return Current.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Current] to a JSON string.
	String toJson() => json.encode(toMap());
}
