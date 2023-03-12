import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import 'astro.dart';
import 'day.dart';
import 'hour.dart';

@immutable
class Forecastday {
	final String? date;
	final int? dateEpoch;
	final Day? day;
	final Astro? astro;
	final List<Hour>? hour;

	const Forecastday({
		this.date, 
		this.dateEpoch, 
		this.day, 
		this.astro, 
		this.hour, 
	});

	@override
	String toString() {
		return 'Forecastday(date: $date, dateEpoch: $dateEpoch, day: $day, astro: $astro, hour: $hour)';
	}

	factory Forecastday.fromMap(Map<String, dynamic> data) => Forecastday(
				date: data['date'] as String?,
				dateEpoch: data['date_epoch'] as int?,
				day: data['day'] == null
						? null
						: Day.fromMap(data['day'] as Map<String, dynamic>),
				astro: data['astro'] == null
						? null
						: Astro.fromMap(data['astro'] as Map<String, dynamic>),
				hour: (data['hour'] as List<dynamic>?)
						?.map((e) => Hour.fromMap(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toMap() => {
				'date': date,
				'date_epoch': dateEpoch,
				'day': day?.toMap(),
				'astro': astro?.toMap(),
				'hour': hour?.map((e) => e.toMap()).toList(),
			};

  /// `dart:convert`
  ///
  /// Parses the string and returns the resulting Json object as [Forecastday].
	factory Forecastday.fromJson(String data) {
		return Forecastday.fromMap(json.decode(data) as Map<String, dynamic>);
	}
  /// `dart:convert`
  ///
  /// Converts [Forecastday] to a JSON string.
	String toJson() => json.encode(toMap());
}
