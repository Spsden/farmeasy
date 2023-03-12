import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

@immutable
class Astro {
	final String? sunrise;
	final String? sunset;
	final String? moonrise;
	final String? moonset;
	final String? moonPhase;
	final String? moonIllumination;
	final dynamic isMoonUp;
	final dynamic isSunUp;

	const Astro({
		this.sunrise, 
		this.sunset, 
		this.moonrise, 
		this.moonset, 
		this.moonPhase, 
		this.moonIllumination, 
		this.isMoonUp, 
		this.isSunUp, 
	});

	@override
	String toString() {
		return 'Astro(sunrise: $sunrise, sunset: $sunset, moonrise: $moonrise, moonset: $moonset, moonPhase: $moonPhase, moonIllumination: $moonIllumination, isMoonUp: $isMoonUp, isSunUp: $isSunUp)';
	}

	factory Astro.fromMap(Map<String, dynamic> data) => Astro(
				sunrise: data['sunrise'] as String?,
				sunset: data['sunset'] as String?,
				moonrise: data['moonrise'] as String?,
				moonset: data['moonset'] as String?,
				moonPhase: data['moon_phase'] as String?,
				moonIllumination: data['moon_illumination'] as String?,
				isMoonUp: data['is_moon_up'] as dynamic,
				isSunUp: data['is_sun_up'] as dynamic,
			);

	Map<String, dynamic> toMap() => {
				'sunrise': sunrise,
				'sunset': sunset,
				'moonrise': moonrise,
				'moonset': moonset,
				'moon_phase': moonPhase,
				'moon_illumination': moonIllumination,
				'is_moon_up': isMoonUp,
				'is_sun_up': isSunUp,
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Astro].
	factory Astro.fromJson(String data) {
		return Astro.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Astro] to a JSON string.
	String toJson() => json.encode(toMap());
}
