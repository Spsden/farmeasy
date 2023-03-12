import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'condition.dart';

@immutable
class Day {
	final dynamic maxtempC;
	final dynamic maxtempF;
	final dynamic mintempC;
	final dynamic mintempF;
	final dynamic avgtempC;
	final dynamic avgtempF;
	final dynamic maxwindMph;
	final dynamic maxwindKph;
	final dynamic totalprecipMm;
	final dynamic totalprecipIn;
	final dynamic totalsnowCm;
	final dynamic avgvisKm;
	final dynamic avgvisMiles;
	final dynamic avghumidity;
	final dynamic dailyWillItRain;
	final dynamic dailyChanceOfRain;
	final dynamic dailyWillItSnow;
	final dynamic dailyChanceOfSnow;
	final Condition? condition;
	final dynamic uv;

	const Day({
		this.maxtempC, 
		this.maxtempF, 
		this.mintempC, 
		this.mintempF, 
		this.avgtempC, 
		this.avgtempF, 
		this.maxwindMph, 
		this.maxwindKph, 
		this.totalprecipMm, 
		this.totalprecipIn, 
		this.totalsnowCm, 
		this.avgvisKm, 
		this.avgvisMiles, 
		this.avghumidity, 
		this.dailyWillItRain, 
		this.dailyChanceOfRain, 
		this.dailyWillItSnow, 
		this.dailyChanceOfSnow, 
		this.condition, 
		this.uv, 
	});

	@override
	String toString() {
		return 'Day(maxtempC: $maxtempC, maxtempF: $maxtempF, mintempC: $mintempC, mintempF: $mintempF, avgtempC: $avgtempC, avgtempF: $avgtempF, maxwindMph: $maxwindMph, maxwindKph: $maxwindKph, totalprecipMm: $totalprecipMm, totalprecipIn: $totalprecipIn, totalsnowCm: $totalsnowCm, avgvisKm: $avgvisKm, avgvisMiles: $avgvisMiles, avghumidity: $avghumidity, dailyWillItRain: $dailyWillItRain, dailyChanceOfRain: $dailyChanceOfRain, dailyWillItSnow: $dailyWillItSnow, dailyChanceOfSnow: $dailyChanceOfSnow, condition: $condition, uv: $uv)';
	}

	factory Day.fromMap(Map<String, dynamic> data) => Day(
				maxtempC: (data['maxtemp_c'] as num?)?.toDouble(),
				maxtempF: (data['maxtemp_f'] as num?)?.toDouble(),
				mintempC: (data['mintemp_c'] as num?)?.toDouble(),
				mintempF: (data['mintemp_f'] as num?)?.toDouble(),
				avgtempC: (data['avgtemp_c'] as num?)?.toDouble(),
				avgtempF: (data['avgtemp_f'] as num?)?.toDouble(),
				maxwindMph: (data['maxwind_mph'] as num?)?.toDouble(),
				maxwindKph: (data['maxwind_kph'] as num?)?.toDouble(),
				totalprecipMm: (data['totalprecip_mm'] as num?)?.toDouble(),
				totalprecipIn: (data['totalprecip_in'] as num?)?.toDouble(),
				totalsnowCm: data['totalsnow_cm'] as dynamic,
				avgvisKm: (data['avgvis_km'] as num?)?.toDouble(),
				avgvisMiles: data['avgvis_miles'] as dynamic,
				avghumidity: data['avghumidity'] as dynamic,
				dailyWillItRain: data['daily_will_it_rain'] as dynamic,
				dailyChanceOfRain: data['daily_chance_of_rain'] as dynamic,
				dailyWillItSnow: data['daily_will_it_snow'] as dynamic,
				dailyChanceOfSnow: data['daily_chance_of_snow'] as dynamic,
				condition: data['condition'] == null
						? null
						: Condition.fromMap(data['condition'] as Map<String, dynamic>),
				uv: data['uv'] as dynamic,
			);

	Map<String, dynamic> toMap() => {
				'maxtemp_c': maxtempC,
				'maxtemp_f': maxtempF,
				'mintemp_c': mintempC,
				'mintemp_f': mintempF,
				'avgtemp_c': avgtempC,
				'avgtemp_f': avgtempF,
				'maxwind_mph': maxwindMph,
				'maxwind_kph': maxwindKph,
				'totalprecip_mm': totalprecipMm,
				'totalprecip_in': totalprecipIn,
				'totalsnow_cm': totalsnowCm,
				'avgvis_km': avgvisKm,
				'avgvis_miles': avgvisMiles,
				'avghumidity': avghumidity,
				'daily_will_it_rain': dailyWillItRain,
				'daily_chance_of_rain': dailyChanceOfRain,
				'daily_will_it_snow': dailyWillItSnow,
				'daily_chance_of_snow': dailyChanceOfSnow,
				'condition': condition?.toMap(),
				'uv': uv,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Day].
	factory Day.fromJson(String data) {
		return Day.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Day] to a JSON string.
	String toJson() => json.encode(toMap());
}
