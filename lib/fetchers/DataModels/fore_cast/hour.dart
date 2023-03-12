import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'condition.dart';

@immutable
class Hour {
	final dynamic timeEpoch;
	final String? time;
	final double? tempC;
	final double? tempF;
	final dynamic isDay;
	final Condition? condition;
	final double? windMph;
	final double? windKph;
	final dynamic windDegree;
	final String? windDir;
	final dynamic pressureMb;
	final double? pressureIn;
	final double? precipMm;
	final double? precipIn;
	final dynamic humidity;
	final dynamic cloud;
	final double? feelslikeC;
	final double? feelslikeF;
	final double? windchillC;
	final double? windchillF;
	final double? heatindexC;
	final double? heatindexF;
	final double? dewpointC;
	final double? dewpointF;
	final dynamic willItRain;
	final dynamic chanceOfRain;
	final dynamic willItSnow;
	final dynamic chanceOfSnow;
	final dynamic visKm;
	final dynamic visMiles;
	final double? gustMph;
	final double? gustKph;
	final dynamic uv;

	const Hour({
		this.timeEpoch, 
		this.time, 
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
		this.windchillC, 
		this.windchillF, 
		this.heatindexC, 
		this.heatindexF, 
		this.dewpointC, 
		this.dewpointF, 
		this.willItRain, 
		this.chanceOfRain, 
		this.willItSnow, 
		this.chanceOfSnow, 
		this.visKm, 
		this.visMiles, 
		this.gustMph, 
		this.gustKph, 
		this.uv, 
	});

	@override
	String toString() {
		return 'Hour(timeEpoch: $timeEpoch, time: $time, tempC: $tempC, tempF: $tempF, isDay: $isDay, condition: $condition, windMph: $windMph, windKph: $windKph, windDegree: $windDegree, windDir: $windDir, pressureMb: $pressureMb, pressureIn: $pressureIn, precipMm: $precipMm, precipIn: $precipIn, humidity: $humidity, cloud: $cloud, feelslikeC: $feelslikeC, feelslikeF: $feelslikeF, windchillC: $windchillC, windchillF: $windchillF, heatindexC: $heatindexC, heatindexF: $heatindexF, dewpointC: $dewpointC, dewpointF: $dewpointF, willItRain: $willItRain, chanceOfRain: $chanceOfRain, willItSnow: $willItSnow, chanceOfSnow: $chanceOfSnow, visKm: $visKm, visMiles: $visMiles, gustMph: $gustMph, gustKph: $gustKph, uv: $uv)';
	}

	factory Hour.fromMap(Map<String, dynamic> data) => Hour(
				timeEpoch: data['time_epoch'] as dynamic,
				time: data['time'] as String?,
				tempC: (data['temp_c'] as num?)?.toDouble(),
				tempF: (data['temp_f'] as num?)?.toDouble(),
				isDay: data['is_day'] as dynamic,
				condition: data['condition'] == null
						? null
						: Condition.fromMap(data['condition'] as Map<String, dynamic>),
				windMph: (data['wind_mph'] as num?)?.toDouble(),
				windKph: (data['wind_kph'] as num?)?.toDouble(),
				windDegree: data['wind_degree'] as dynamic,
				windDir: data['wind_dir'] as String?,
				pressureMb: data['pressure_mb'] as dynamic,
				pressureIn: (data['pressure_in'] as num?)?.toDouble(),
				precipMm: (data['precip_mm'] as num?)?.toDouble(),
				precipIn: (data['precip_in'] as num?)?.toDouble(),
				humidity: data['humidity'] as dynamic,
				cloud: data['cloud'] as dynamic,
				feelslikeC: (data['feelslike_c'] as num?)?.toDouble(),
				feelslikeF: (data['feelslike_f'] as num?)?.toDouble(),
				windchillC: (data['windchill_c'] as num?)?.toDouble(),
				windchillF: (data['windchill_f'] as num?)?.toDouble(),
				heatindexC: (data['heatindex_c'] as num?)?.toDouble(),
				heatindexF: (data['heatindex_f'] as num?)?.toDouble(),
				dewpointC: (data['dewpoint_c'] as num?)?.toDouble(),
				dewpointF: (data['dewpoint_f'] as num?)?.toDouble(),
				willItRain: data['will_it_rain'] as dynamic,
				chanceOfRain: data['chance_of_rain'] as dynamic,
				willItSnow: data['will_it_snow'] as dynamic,
				chanceOfSnow: data['chance_of_snow'] as dynamic,
				visKm: data['vis_km'] as dynamic,
				visMiles: data['vis_miles'] as dynamic,
				gustMph: (data['gust_mph'] as num?)?.toDouble(),
				gustKph: (data['gust_kph'] as num?)?.toDouble(),
				uv: data['uv'] as dynamic,
			);

	Map<String, dynamic> toMap() => {
				'time_epoch': timeEpoch,
				'time': time,
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
				'windchill_c': windchillC,
				'windchill_f': windchillF,
				'heatindex_c': heatindexC,
				'heatindex_f': heatindexF,
				'dewpoint_c': dewpointC,
				'dewpoint_f': dewpointF,
				'will_it_rain': willItRain,
				'chance_of_rain': chanceOfRain,
				'will_it_snow': willItSnow,
				'chance_of_snow': chanceOfSnow,
				'vis_km': visKm,
				'vis_miles': visMiles,
				'gust_mph': gustMph,
				'gust_kph': gustKph,
				'uv': uv,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Hour].
	factory Hour.fromJson(String data) {
		return Hour.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Hour] to a JSON string.
	String toJson() => json.encode(toMap());
}
